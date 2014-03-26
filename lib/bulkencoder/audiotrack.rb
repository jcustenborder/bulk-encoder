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
    attr_reader :channels

    def initialize(s)
      input = nil

      if s.is_a?(String)
        input = s
      elsif s.is_a?(Tree::TreeNode)
        input = s.name
      else
        raise ArgumentError, 's must be a String or Tree::TreeNode'
      end

      regexes = [
          /^(?<track>\d+), (?<language>.*) \((?<codec>.*)\) \((?<channels>.+) ch\) \((?<title>.+)\) \((?<iso>iso.*): (?<isolanguage>.*)\)(, (?<sample_rate>\d+)Hz, (?<bit_rate>\d+)bps)?$/,
          /^(?<track>\d+), (?<language>.*) \((?<codec>.*)\) \((?<channels>.+) ch\) \((?<iso>iso.*): (?<isolanguage>.*)\)(, (?<sample_rate>\d+)Hz, (?<bit_rate>\d+)bps)?$/,
          /(?<track>\d+), (?<language>.*) \((?<codec>.*)\) \((?<title>.+)\) \((?<iso>.*): (?<isolanguage>.*)\)(, (?<sample_rate>\d+)Hz, (?<bit_rate>\d+)bps)?/
      ]

      regexes.each do |regex|
        match = regex.match(input)

        next unless match

        @track = match[:track].to_i
        @language = match[:language]
        @codec = match[:codec]
        @title = match[:title] if match.names.include?('title')
        @iso = match[:iso]
        @isolanguage = match[:isolanguage]
        @sample_rate = match[:sample_rate].to_i unless match[:sample_rate].nil?
        @bit_rate = match[:bit_rate].to_i unless match[:bit_rate].nil?
        @channels = Float(match[:channels]) if match.names.include?('channels')
        return
      end

      raise ArgumentError, "Could not parse #{input}"
    end

    def <=>(another_track)
      return -1 unless another_track.is_a?(AudioTrack)

      result = 0

      result += (self.sample_rate - another_track.sample_rate) * 1
      result += (self.bit_rate - another_track.bit_rate) * 10

      return result
    end
  end
end