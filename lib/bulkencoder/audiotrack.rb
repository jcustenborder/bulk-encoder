require 'bulkencoder'
require 'tree'

module BulkEncoder
  class AudioTrack
    include Comparable
    attr_reader :track
    attr_reader :language
    attr_reader :sample_rate
    attr_reader :bit_rate
    attr_reader :codec
    attr_reader :title
    attr_reader :iso
    attr_reader :isolanguage

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

      unless match
        raise ArgumentError, "Could not parse #{input}"
      end

      @track = match[:track].to_i
      @language = match[:language]
      @codec = match[:codec]
      @title = match[:title]
      @iso = match[:iso]
      @isolanguage = match[:isolanguage]
      @sample_rate = match[:sample_rate].to_i unless match[:sample_rate].nil?
      @bit_rate = match[:bit_rate].to_i unless match[:bit_rate].nil?
    end

    def <=>(another_track)
      return -1 unless another_track.is_a?(AudioTrack)

      result = 0

      result += (self.sample_rate - another_track.sample_rate * 10)
      result += (self.bit_rate - another_track.bit_rate * 100)

      return result
    end
  end
end