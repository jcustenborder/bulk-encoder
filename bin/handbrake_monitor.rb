#!/usr/bin/env ruby

#require 'handbrake'
require 'trollop'
require 'log4r'
require 'stomp'
require 'json'
require 'bulkencoder'

log = Log4r::Logger.new File.basename(__FILE__, '.rb')
log.outputters = Log4r::Outputter.stderr


opts = Trollop::options do
  opt :stomp_url, 'Url used to connect to stomp with.', :type => :string, :default => 'stomp://127.0.0.1'
  opt :scan_queue_reply, 'Queue to publish scan replies', :type => :string, :default => '/queue/scanreply'
end

log.info 'Connecting to stomp'
stomp_client = Stomp::Client.new(opts[:stomp_url])

stomp_client.subscribe(opts[:scan_queue_reply]) do |msg|
  begin
    body = JSON.parse(msg.body)
    log.info "#{body}"
    rescue
  end
end

begin
  while true
    sleep 1000
  end
rescue SystemExit, Interrupt
  stomp_client.close
end






