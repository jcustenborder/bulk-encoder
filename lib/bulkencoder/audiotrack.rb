require 'bulkencoder'
require 'tree'

module BulkEncoder
  class AudioTrack
    attr_accessor :track
    attr_accessor :language
    attr_accessor :sample_rate
    attr_accessor :bit_rate
    attr_accessor :codec
    attr_accessor :title
    attr_accessor :iso
    attr_accessor :isolanguage

    def initialize(s)
      input = nil

      if s.is_a?(String)
        input = s
      elsif s.is_a?(Tree::TreeNode)
        input = s.name
      else
        raise ArgumentError, 's must be a String or Tree::TreeNode'
      end

      match = /(?<track>\d+), (?<language>.*) \((?<codec>.*)\) \((?<title>.+)\) \((?<iso>.*): (?<isolanguage>.*)\)(, (?<sample_rate>\d+)Hz, (?<bit_rate>\d+)bps)?/.match(input)

      if match
        self.track = match[:track].to_i
        self.language = match[:language]
        self.codec = match[:codec]
        self.title = match[:title]
        self.iso = match[:iso]
        self.isolanguage = match[:isolanguage]
        self.sample_rate = match[:sample_rate].to_i unless match[:sample_rate].nil?
        self.bit_rate = match[:bit_rate].to_i unless match[:bit_rate].nil?
      else
        raise ArgumentError, "Could not parse #{parts[1]}"
      end

    end
  end
end