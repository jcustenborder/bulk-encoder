#!/usr/bin/env ruby

require 'handbrake'
require 'trollop'
require 'log4r'
require 'stomp'
require 'json'
require 'bulkencoder'


log = Log4r::Logger.new File.basename(__FILE__, '.rb')
log.outputters = Log4r::Outputter.stdout

opts = Trollop::options do
  opt :input_path, "Input Path", :type => :string, :required => true
  opt :handbrake_path, 'Path to the handbrake executable', :type => :string, :default => 'HandBrakeCLI'
  opt :stomp_url, 'Url used to connect to stomp with.', :type => :string, :default => 'stomp://127.0.0.1'
  opt :scan_queue, 'Queue to monitor for scans', :type => :string, :default => '/queue/scan'
  opt :encode_queue, 'Queue to monitor for encodes', :type => :string, :default => '/queue/encode'
end

handbrake_path = opts[:handbrake_path]
input_path = opts[:input_path]

#handbrake = HandBrake::CLI.new(:bin_path => handbrake_path, :trace => false)

log.info 'Connecting to stomp'
stomp_client = Stomp::Client.new(opts[:stomp_url])

message = {
    'input_path' => '/Volumes/movies/Iron Man'
}

stomp_client.publish(opts[:scan_queue], message.to_json)


#search_path = File.join(input_path, '*', '/')
#directories = Dir[search_path]

#example_tracks = {}

#directories.each do |movie_path|
#  log.info "queuing #{movie_path}"
#
#  message = {
#      'input_path' => movie_path
#  }

  #client.publish(opts[:scan_queue], message.to_json)
  #
  #project = handbrake.input(movie_path)
  #disc = nil
  #begin
  #  disc = project.scan
  #rescue
  #  log.error "Exception scanning #{movie_path}"
  #  next
  #end
  #
  #disc.titles.each do |title_number, title|
  #  #if title.main_feature?
  #  raw_tree = disc.raw_tree["title #{title_number}:"]
  #  audio_tracks = raw_tree['audio tracks:']
  #  audio_tracks.children do |audio_track|
  #    example_tracks[audio_track.name] = true
  #  end
  #end
#end
#
#example_tracks.each do |key, value|
#  puts key
#end
#
#puts example_tracks

