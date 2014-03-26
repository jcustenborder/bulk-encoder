require File.expand_path('../../spec_helper.rb', __FILE__)
require 'bulkencoder'

module BulkEncoder
  describe AudioTrack do
    subject do
      AudioTrack.new input
    end

    describe '#new' do
      describe 'Test Case 1' do
        let(:input) { "1, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 9' do
        let(:input) { "2, English (DTS) (6.1 ch) (iso639-2: eng), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "DTS"
        end
        it 'title should be parsed' do
          subject.title.should == "6.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 768000
        end
      end
      describe 'Test Case 17' do
        let(:input) { "3, English (AC3) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 25' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 1"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 33' do
        let(:input) { "1, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 41' do
        let(:input) { "1, English (AC3) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 49' do
        let(:input) { "2, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 1"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 57' do
        let(:input) { "1, English (LPCM) (2.0 ch) (iso639-2: eng)" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "LPCM"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == nil
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == nil
        end
      end
      describe 'Test Case 65' do
        let(:input) { "2, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 73' do
        let(:input) { "3, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 81' do
        let(:input) { "2, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 89' do
        let(:input) { "2, Francais (AC3) (Dolby Surround) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 97' do
        let(:input) { "1, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 105' do
        let(:input) { "2, English (AC3) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 113' do
        let(:input) { "3, English (AC3) (Director's Commentary 1) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 1"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 121' do
        let(:input) { "2, Francais (AC3) (5.1 ch) (iso639-2: fra), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 129' do
        let(:input) { "4, English (AC3) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 137' do
        let(:input) { "5, English (AC3) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 145' do
        let(:input) { "2, Espanol (AC3) (5.1 ch) (iso639-2: spa), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 153' do
        let(:input) { "3, Francais (AC3) (5.1 ch) (iso639-2: fra), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 161' do
        let(:input) { "2, Francais (AC3) (5.1 ch) (iso639-2: fra), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 169' do
        let(:input) { "3, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 177' do
        let(:input) { "1, Unknown (AC3) (2.0 ch) (iso639-2: und), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "und"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 185' do
        let(:input) { "2, Francais (AC3) (1.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "1.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 193' do
        let(:input) { "3, Espanol (AC3) (1.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "1.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 201' do
        let(:input) { "1, Francais (AC3) (1.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "1.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 209' do
        let(:input) { "4, English (AC3) (Director's Commentary 2) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 217' do
        let(:input) { "3, Francais (AC3) (Dolby Surround) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 225' do
        let(:input) { "2, English (AC3) (Director's Commentary 1) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 1"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 233' do
        let(:input) { "1, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "1.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 241' do
        let(:input) { "3, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 1"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 249' do
        let(:input) { "2, English (DTS) (5.1 ch) (iso639-2: eng), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "DTS"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 768000
        end
      end
      describe 'Test Case 257' do
        let(:input) { "1, English (DTS) (5.1 ch) (iso639-2: eng), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "DTS"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 768000
        end
      end
      describe 'Test Case 265' do
        let(:input) { "3, Espanol (AC3) (5.1 ch) (iso639-2: spa), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 273' do
        let(:input) { "2, Espanol (AC3) (Dolby Surround) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 281' do
        let(:input) { "5, English (AC3) (Director's Commentary 1) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 1"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 289' do
        let(:input) { "1, Unknown (AC3) (5.1 ch) (iso639-2: und), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "und"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 297' do
        let(:input) { "2, Francais (AC3) (2.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 305' do
        let(:input) { "1, English (AC3) (5.0 ch) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 313' do
        let(:input) { "2, Espanol (AC3) (5.0 ch) (iso639-2: spa), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 321' do
        let(:input) { "3, English (AC3) (Director's Commentary 1) (1.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 1"
        end
        it 'title should be parsed' do
          subject.title.should == "1.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 329' do
        let(:input) { "4, Espanol (AC3) (Dolby Surround) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 337' do
        let(:input) { "1, English (AC3) (3.0 ch) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "3.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 345' do
        let(:input) { "3, Francais (AC3) (2.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 353' do
        let(:input) { "1, Unknown (AC3) (5.1 ch) (iso639-2: und), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "und"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 361' do
        let(:input) { "5, English (DTS) (5.1 ch) (iso639-2: eng), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "DTS"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 768000
        end
      end
      describe 'Test Case 369' do
        let(:input) { "2, English (DTS) (6.1 ch) (iso639-2: eng), 48000Hz, 1536000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "DTS"
        end
        it 'title should be parsed' do
          subject.title.should == "6.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 1536000
        end
      end
      describe 'Test Case 377' do
        let(:input) { "2, Espanol (AC3) (2.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 385' do
        let(:input) { "4, Espanol (AC3) (2.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "2.0 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 393' do
        let(:input) { "2, Espanol (AC3) (5.1 ch) (iso639-2: spa), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "spa"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 401' do
        let(:input) { "3, Francais (AC3) (5.1 ch) (iso639-2: fra), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Francais"
        end
        it 'codec should be parsed' do
          subject.codec.should == "AC3"
        end
        it 'title should be parsed' do
          subject.title.should == "5.1 ch"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 409' do
        let(:input) { "4, English (AC3) (Visually Impaired) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Visually Impaired"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "eng"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
    end
  end
end