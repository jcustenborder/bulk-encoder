require 'handbrake'
require 'trollop'
opts = Trollop::options do
  opt :input_path, "Input Path", :type => :string, :required => true
  opt :handbrake_path, 'Path to the handbrake executable', :type => :string, :default => 'HandBrakeCLI'
end

handbrake_path = opts[:handbrake_path]
input_path = opts[:input_path]

handbrake = HandBrake::CLI.new(:bin_path => handbrake_path, :trace => false)

search_path = File.join(input_path, '*', '/')
directories = Dir[search_path]

example_tracks = {}

directories.each do |movie_path|
  project = handbrake.input(movie_path)
  disc = project.scan

  disc.titles.each do |title_number, title|
    #if title.main_feature?
    raw_tree = disc.raw_tree["title #{title_number}:"]
    audio_tracks = raw_tree['audio tracks:']
    audio_tracks.children do |audio_track|
      example_tracks[audio_track.name] = true
    end
  end
end

example_tracks.each do |key, value|
  puts key
end

puts example_tracks

