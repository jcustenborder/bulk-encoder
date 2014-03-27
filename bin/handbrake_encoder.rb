#!/usr/bin/env ruby

require 'handbrake'
require 'trollop'
require 'log4r'
require 'stomp'
require 'json'
require 'bulkencoder'

log = Log4r::Logger.new File.basename(__FILE__, '.rb')
log.outputters = Log4r::Outputter.stderr


opts = Trollop::options do
  opt :output_path, 'Path to output the encoded files to', :type => :string, :required => true
  opt :handbrake_path, 'Path to the handbrake executable', :type => :string, :default => 'HandBrakeCLI'
  opt :stomp_url, 'Url used to connect to stomp with.', :type => :string, :default => 'stomp://127.0.0.1'
  opt :scan_queue, 'Queue to monitor for scans', :type => :string, :default => '/queue/scan'
  opt :scan_queue_reply, 'Queue to publish scan replies', :type => :string, :default => '/queue/scanreply'
  opt :encode_queue, 'Queue to monitor for encodes', :type => :string, :default => '/queue/encode'
end

log.info 'Connecting to stomp'
stomp_client = Stomp::Client.new(opts[:stomp_url])
handbrake_path = opts[:handbrake_path]
handbrake = HandBrake::CLI.new(:bin_path => handbrake_path, :trace => false)

stomp_client.subscribe(opts[:scan_queue]) do |msg|
  begin
    message = JSON.parse(msg.body)

    input_path = message['input_path']
    project = handbrake.input(input_path)
    log.info "started scanning #{input_path}"
    disc = project.scan
    log.info "finished scanning #{input_path}"
    disc.titles.each do |title_number, title|
      next unless title.main_feature?
      raw_tree = disc.raw_tree["title #{title_number}:"]
      raw_audio_tracks = raw_tree['audio tracks:']
      audio_tracks = []
      raw_audio_tracks.children do |raw_audio_track|
        begin
          audio_track = BulkEncoder::AudioTrack.new raw_audio_track
          log.info "found #{raw_audio_track.name}"
          audio_tracks << audio_track
        rescue Exception => ex
          log.error "Exception while scanning #{ex}"
        end
      end

      audio_tracks.sort!
      selected_track = audio_tracks.first

      reply = {
          'input_path' => input_path,
          'language' => selected_track.language,
          'channels' => selected_track.channels,
          'codec' => selected_track.codec,
          'sample_rate' => selected_track.sample_rate,
          'bit_rate' => selected_track.bit_rate
      }

      stomp_client.publish(opts[:scan_queue_reply], reply.to_json)
    end
  end
end

stomp_client.subscribe(opts[:encode_queue]) do |msg|
  p msg.body
end

begin
  while true
    sleep 1000
  end
rescue SystemExit, Interrupt
  stomp_client.close
end






