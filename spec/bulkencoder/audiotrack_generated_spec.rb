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
      describe 'Test Case 2' do
        let(:input) { "2, English (DTS-ES) (6.1 ch) (iso639-2: eng), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "DTS-ES"
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
      describe 'Test Case 3' do
        let(:input) { "3, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 4' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 5' do
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
      describe 'Test Case 6' do
        let(:input) { "1, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 7' do
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
      describe 'Test Case 8' do
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
      describe 'Test Case 9' do
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
      describe 'Test Case 10' do
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
      describe 'Test Case 11' do
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
      describe 'Test Case 12' do
        let(:input) { "2, Francais (AC3) (2.0 ch) (Dolby Surround) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Francais (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 13' do
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
      describe 'Test Case 14' do
        let(:input) { "2, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 15' do
        let(:input) { "3, English (AC3) (Director's Commentary 1) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 16' do
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
      describe 'Test Case 17' do
        let(:input) { "4, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 18' do
        let(:input) { "5, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 19' do
        let(:input) { "1, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
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
      describe 'Test Case 20' do
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
      describe 'Test Case 21' do
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
      describe 'Test Case 22' do
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
      describe 'Test Case 23' do
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
      describe 'Test Case 24' do
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
      describe 'Test Case 25' do
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
      describe 'Test Case 26' do
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
      describe 'Test Case 27' do
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
      describe 'Test Case 28' do
        let(:input) { "4, English (AC3) (Director's Commentary 2) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 2)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 29' do
        let(:input) { "3, Francais (AC3) (2.0 ch) (Dolby Surround) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Francais (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 30' do
        let(:input) { "2, English (AC3) (Director's Commentary 1) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 31' do
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
      describe 'Test Case 32' do
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
      describe 'Test Case 33' do
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
      describe 'Test Case 34' do
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
      describe 'Test Case 35' do
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
      describe 'Test Case 36' do
        let(:input) { "2, Espanol (AC3) (2.0 ch) (Dolby Surround) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 37' do
        let(:input) { "5, English (AC3) (Director's Commentary 1) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 38' do
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
      describe 'Test Case 39' do
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
      describe 'Test Case 40' do
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
      describe 'Test Case 41' do
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
      describe 'Test Case 42' do
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
      describe 'Test Case 43' do
        let(:input) { "4, Espanol (AC3) (2.0 ch) (Dolby Surround) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 44' do
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
      describe 'Test Case 45' do
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
      describe 'Test Case 46' do
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
      describe 'Test Case 47' do
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
      describe 'Test Case 48' do
        let(:input) { "2, English (DTS-ES) (6.1 ch) (iso639-2: eng), 48000Hz, 1536000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "DTS-ES"
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
      describe 'Test Case 49' do
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
      describe 'Test Case 50' do
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
      describe 'Test Case 51' do
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
      describe 'Test Case 52' do
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
      describe 'Test Case 53' do
        let(:input) { "4, English (AC3) (Visually Impaired) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Visually Impaired)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 54' do
        let(:input) { "2, Japanese (AC3) (2.0 ch) (iso639-2: jpn), 48000Hz, 224000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese"
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
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 55' do
        let(:input) { "3, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 224000bps" }
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 56' do
        let(:input) { "1, Unknown (AC3) (2.0 ch) (Dolby Surround) (iso639-2: und), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
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
      describe 'Test Case 57' do
        let(:input) { "5, Portugues (AC3) (2.0 ch) (iso639-2: por), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues"
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
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 58' do
        let(:input) { "6, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 59' do
        let(:input) { "7, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 7
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 60' do
        let(:input) { "2, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 61' do
        let(:input) { "4, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 62' do
        let(:input) { "3, Espanol (AC3) (2.0 ch) (Dolby Surround) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 63' do
        let(:input) { "5, English (AC3) (Director's Commentary 2) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 2)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 64' do
        let(:input) { "3, Espanol (AC3) (2.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
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
      describe 'Test Case 65' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 66' do
        let(:input) { "4, Francais (AC3) (2.0 ch) (Dolby Surround) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Francais (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 67' do
        let(:input) { "2, English (AC3) (4.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
          subject.title.should == "4.1 ch"
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
      describe 'Test Case 68' do
        let(:input) { "1, Unknown (DTS) (5.1 ch) (iso639-2: und), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown"
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
          subject.isolanguage.should == "und"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 768000
        end
      end
      describe 'Test Case 69' do
        let(:input) { "2, Unknown (AC3) (2.0 ch) (iso639-2: und), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
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
      describe 'Test Case 70' do
        let(:input) { "1, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 256000bps" }
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 71' do
        let(:input) { "5, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 72' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (1.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
      describe 'Test Case 73' do
        let(:input) { "1, Unknown (AC3) (2.0 ch) (iso639-2: und), 48000Hz, 384000bps" }
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
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 74' do
        let(:input) { "3, Espanol (AC3) (5.1 ch) (iso639-2: spa), 48000Hz, 448000bps" }
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
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 75' do
        let(:input) { "5, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 76' do
        let(:input) { "4, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
      describe 'Test Case 77' do
        let(:input) { "5, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
      describe 'Test Case 78' do
        let(:input) { "1, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 224000bps" }
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 79' do
        let(:input) { "1, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 256000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 80' do
        let(:input) { "2, English (AC3) (5.0 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
      describe 'Test Case 81' do
        let(:input) { "3, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 256000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 82' do
        let(:input) { "4, English (AC3) (5.0 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
      describe 'Test Case 83' do
        let(:input) { "4, Espanol (AC3) (5.1 ch) (iso639-2: spa), 48000Hz, 448000bps" }
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
      describe 'Test Case 84' do
        let(:input) { "5, Espanol (AC3) (2.0 ch) (Dolby Surround) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 85' do
        let(:input) { "2, English (DTS) (5.1 ch) (iso639-2: eng), 48000Hz, 1536000bps" }
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
          subject.bit_rate.should == 1536000
        end
      end
      describe 'Test Case 86' do
        let(:input) { "3, English (AC3) (Director's Commentary 2) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
      describe 'Test Case 87' do
        let(:input) { "1, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 88' do
        let(:input) { "4, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
      describe 'Test Case 89' do
        let(:input) { "2, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 224000bps" }
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 90' do
        let(:input) { "3, Unknown (AC3) (2.0 ch) (iso639-2: und), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
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
      describe 'Test Case 91' do
        let(:input) { "3, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 92' do
        let(:input) { "2, English (AC3) (Director's Commentary 1) (5.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
      describe 'Test Case 93' do
        let(:input) { "2, Unknown (AC3) (5.1 ch) (iso639-2: und), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
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
      describe 'Test Case 94' do
        let(:input) { "3, Unknown (AC3) (5.1 ch) (iso639-2: und), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
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
      describe 'Test Case 95' do
        let(:input) { "3, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 96' do
        let(:input) { "3, Japanese (AC3) (2.0 ch) (iso639-2: jpn), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese"
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
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 97' do
        let(:input) { "1, Japanese (AC3) (2.0 ch) (iso639-2: jpn), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese"
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
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 98' do
        let(:input) { "3, English (DTS-ES) (6.1 ch) (iso639-2: eng), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English"
        end
        it 'codec should be parsed' do
          subject.codec.should == "DTS-ES"
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
      describe 'Test Case 99' do
        let(:input) { "1, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 320000bps" }
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
          subject.bit_rate.should == 320000
        end
      end
      describe 'Test Case 100' do
        let(:input) { "3, English (DTS) (5.1 ch) (iso639-2: eng), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
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
      describe 'Test Case 101' do
        let(:input) { "4, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 256000bps" }
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 102' do
        let(:input) { "2, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 256000bps" }
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 103' do
        let(:input) { "3, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 104' do
        let(:input) { "1, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 105' do
        let(:input) { "1, English (DTS) (5.1 ch) (iso639-2: eng), 48000Hz, 1536000bps" }
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
          subject.bit_rate.should == 1536000
        end
      end
      describe 'Test Case 106' do
        let(:input) { "1, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 107' do
        let(:input) { "4, Unknown (AC3) (2.0 ch) (Dolby Surround) (iso639-2: und), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
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
      describe 'Test Case 108' do
        let(:input) { "4, Francais (AC3) (5.1 ch) (iso639-2: fra), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
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
      describe 'Test Case 109' do
        let(:input) { "1, English (AC3) (4.0 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
          subject.title.should == "4.0 ch"
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
      describe 'Test Case 110' do
        let(:input) { "2, Francais (AC3) (2.0 ch) (Dolby Surround) (iso639-2: fra), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Francais (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 111' do
        let(:input) { "3, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 112' do
        let(:input) { "4, English (AC3) (Director's Commentary 2) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 2)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 113' do
        let(:input) { "3, Unknown (AC3) (2.0 ch) (Dolby Surround) (iso639-2: und), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
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
      describe 'Test Case 114' do
        let(:input) { "6, English (AC3) (Director's Commentary 2) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
      describe 'Test Case 115' do
        let(:input) { "1, English (AC3) (4.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
          subject.title.should == "4.1 ch"
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
      describe 'Test Case 116' do
        let(:input) { "6, English (AC3) (Director's Commentary 1) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 117' do
        let(:input) { "7, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 7
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
      describe 'Test Case 118' do
        let(:input) { "4, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 128000bps" }
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
          subject.bit_rate.should == 128000
        end
      end
      describe 'Test Case 119' do
        let(:input) { "1, Unknown (AC3) (2.0 ch) (iso639-2: und), 48000Hz, 256000bps" }
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 120' do
        let(:input) { "2, English (AC3) (Visually Impaired) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Visually Impaired"
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
      describe 'Test Case 121' do
        let(:input) { "4, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 122' do
        let(:input) { "2, Unknown (AC3) (2.0 ch) (Dolby Surround) (iso639-2: und), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
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
      describe 'Test Case 123' do
        let(:input) { "1, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 124' do
        let(:input) { "1, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 125' do
        let(:input) { "5, English (AC3) (Director's Commentary 1) (1.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
      describe 'Test Case 126' do
        let(:input) { "6, English (AC3) (Director's Commentary 2) (1.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
      describe 'Test Case 127' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (5.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
      describe 'Test Case 128' do
        let(:input) { "5, English (AC3) (Director's Commentary 2) (5.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
      describe 'Test Case 129' do
        let(:input) { "5, English (AC3) (Director's Commentary 2) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
      describe 'Test Case 130' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
      describe 'Test Case 131' do
        let(:input) { "5, English (AC3) (Director's Commentary 2) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
      describe 'Test Case 132' do
        let(:input) { "1, Unknown (LPCM) (2.0 ch) (iso639-2: und)" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown"
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
          subject.isolanguage.should == "und"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == nil
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == nil
        end
      end
      describe 'Test Case 133' do
        let(:input) { "4, Portugues (AC3) (1.0 ch) (iso639-2: por), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues"
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
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 134' do
        let(:input) { "2, Espanol (AC3) (1.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
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
      describe 'Test Case 135' do
        let(:input) { "1, English (AC3) (5.0 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 136' do
        let(:input) { "2, Francais (AC3) (5.0 ch) (iso639-2: fra), 48000Hz, 384000bps" }
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
          subject.title.should == "5.0 ch"
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
      describe 'Test Case 137' do
        let(:input) { "3, English (DTS) (5.1 ch) (iso639-2: eng), 48000Hz, 1536000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
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
          subject.bit_rate.should == 1536000
        end
      end
      describe 'Test Case 138' do
        let(:input) { "3, Portugues (AC3) (2.0 ch) (iso639-2: por), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues"
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
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 139' do
        let(:input) { "4, English (AC3) (Director's Commentary 2) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 140' do
        let(:input) { "2, English (AC3) (Director's Commentary 1) (2.1 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.1 ch"
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
      describe 'Test Case 141' do
        let(:input) { "3, Portugues (AC3) (1.0 ch) (iso639-2: por), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues"
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
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 142' do
        let(:input) { "4, Japanese (AC3) (2.0 ch) (Dolby Surround) (iso639-2: jpn), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 143' do
        let(:input) { "3, Japanese (AC3) (2.0 ch) (Dolby Surround) (iso639-2: jpn), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 144' do
        let(:input) { "1, English (AC3) (3.0 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 145' do
        let(:input) { "6, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 146' do
        let(:input) { "1, Espanol (AC3) (2.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
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
      describe 'Test Case 147' do
        let(:input) { "1, Unknown (AC3) (2.0 ch) (iso639-2: und), 48000Hz, 224000bps" }
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 148' do
        let(:input) { "1, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 224000bps" }
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 149' do
        let(:input) { "4, Espanol (AC3) (5.1 ch) (iso639-2: spa), 48000Hz, 384000bps" }
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
      describe 'Test Case 150' do
        let(:input) { "2, Chinese (AC3) (5.1 ch) (iso639-2: zho), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Chinese"
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
          subject.isolanguage.should == "zho"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 151' do
        let(:input) { "4, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 152' do
        let(:input) { "5, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 153' do
        let(:input) { "4, Francais (AC3) (5.1 ch) (iso639-2: fra), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
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
      describe 'Test Case 154' do
        let(:input) { "2, Unknown (DTS) (5.1 ch) (iso639-2: und), 48000Hz, 1536000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown"
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
          subject.isolanguage.should == "und"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 1536000
        end
      end
      describe 'Test Case 155' do
        let(:input) { "1, Unknown (AC3) (2.0 ch) (iso639-2: und), 48000Hz, 448000bps" }
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
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 156' do
        let(:input) { "4, English (AC3) (Director's Commentary 2) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
      describe 'Test Case 157' do
        let(:input) { "1, Chinese (DTS) (5.1 ch) (iso639-2: zho), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Chinese"
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
          subject.isolanguage.should == "zho"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 768000
        end
      end
      describe 'Test Case 158' do
        let(:input) { "2, Chinese (AC3) (5.1 ch) (iso639-2: zho), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Chinese"
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
          subject.isolanguage.should == "zho"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 159' do
        let(:input) { "5, Espanol (AC3) (5.1 ch) (iso639-2: spa), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
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
      describe 'Test Case 160' do
        let(:input) { "2, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
      describe 'Test Case 161' do
        let(:input) { "3, English (AC3) (Director's Commentary 2) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 2)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 162' do
        let(:input) { "5, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
      describe 'Test Case 163' do
        let(:input) { "6, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 164' do
        let(:input) { "1, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 256000bps" }
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 165' do
        let(:input) { "2, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 166' do
        let(:input) { "1, Latin (AC3) (5.1 ch) (iso639-2: lat), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Latin"
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
          subject.isolanguage.should == "lat"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 167' do
        let(:input) { "2, Latin (DTS) (5.1 ch) (iso639-2: lat), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Latin"
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
          subject.isolanguage.should == "lat"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 768000
        end
      end
      describe 'Test Case 168' do
        let(:input) { "1, Unknown (DTS) (5.1 ch) (iso639-2: und), 48000Hz, 1536000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown"
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
          subject.isolanguage.should == "und"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 1536000
        end
      end
      describe 'Test Case 169' do
        let(:input) { "1, Japanese (AC3) (5.1 ch) (iso639-2: jpn), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese"
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
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 170' do
        let(:input) { "7, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 7
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
      describe 'Test Case 171' do
        let(:input) { "8, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 8
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
      describe 'Test Case 172' do
        let(:input) { "3, Portugues (AC3) (5.1 ch) (iso639-2: por), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues"
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
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 173' do
        let(:input) { "4, English (AC3) (Visually Impaired) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
      describe 'Test Case 174' do
        let(:input) { "2, Unknown (DTS) (5.1 ch) (iso639-2: und), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Unknown"
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
          subject.isolanguage.should == "und"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 768000
        end
      end
      describe 'Test Case 175' do
        let(:input) { "3, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 176' do
        let(:input) { "6, English (AC3) (Director's Commentary 2) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 2)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 177' do
        let(:input) { "7, English (AC3) (Director's Commentary 2) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 7
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
      describe 'Test Case 178' do
        let(:input) { "2, Japanese (AC3) (2.0 ch) (Dolby Surround) (iso639-2: jpn), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 179' do
        let(:input) { "2, Japanese (AC3) (5.1 ch) (iso639-2: jpn), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese"
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
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 180' do
        let(:input) { "2, English (AC3) (3.1 ch) (iso639-2: eng), 48000Hz, 320000bps" }
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
          subject.title.should == "3.1 ch"
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
          subject.bit_rate.should == 320000
        end
      end
      describe 'Test Case 181' do
        let(:input) { "4, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 128000bps" }
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
          subject.bit_rate.should == 128000
        end
      end
      describe 'Test Case 182' do
        let(:input) { "1, Japanese (AC3) (2.0 ch) (Dolby Surround) (iso639-2: jpn), 48000Hz, 224000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 183' do
        let(:input) { "1, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 224000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 184' do
        let(:input) { "1, Chinese (AC3) (5.1 ch) (iso639-2: zho), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Chinese"
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
          subject.isolanguage.should == "zho"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 185' do
        let(:input) { "1, Francais (AC3) (5.1 ch) (iso639-2: fra), 48000Hz, 448000bps" }
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
      describe 'Test Case 186' do
        let(:input) { "6, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
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
      describe 'Test Case 187' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 160000bps" }
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
          subject.bit_rate.should == 160000
        end
      end
      describe 'Test Case 188' do
        let(:input) { "5, English (AC3) (Director's Commentary 2) (2.0 ch) (iso639-2: eng), 48000Hz, 160000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
          subject.bit_rate.should == 160000
        end
      end
      describe 'Test Case 189' do
        let(:input) { "5, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 190' do
        let(:input) { "1, Francais (AC3) (2.0 ch) (Dolby Surround) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Francais (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 191' do
        let(:input) { "3, Espanol (AC3) (2.0 ch) (Dolby Surround) (iso639-2: spa), 48000Hz, 256000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Espanol (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 192' do
        let(:input) { "4, Portugues (AC3) (2.0 ch) (Dolby Surround) (iso639-2: por), 48000Hz, 256000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 193' do
        let(:input) { "1, Espanol (AC3) (1.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
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
      describe 'Test Case 194' do
        let(:input) { "4, English (AC3) (1.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 195' do
        let(:input) { "1, Czech (AC3) (5.1 ch) (iso639-2: ces), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Czech"
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
          subject.isolanguage.should == "ces"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 196' do
        let(:input) { "4, Portugues (AC3) (2.0 ch) (Dolby Surround) (iso639-2: por), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
        end
        it 'title should be parsed' do
          subject.title.should == "Dolby Surround"
        end
        it 'iso should be parsed' do
          subject.iso.should == "iso639-2"
        end
        it 'isolanguage should be parsed' do
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 197' do
        let(:input) { "1, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 198' do
        let(:input) { "3, Thai (AC3) (5.1 ch) (iso639-2: tha), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Thai"
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
          subject.isolanguage.should == "tha"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 199' do
        let(:input) { "2, English (AC3) (Visually Impaired) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Visually Impaired"
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
      describe 'Test Case 200' do
        let(:input) { "5, Francais (AC3) (2.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
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
      describe 'Test Case 201' do
        let(:input) { "5, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 128000bps" }
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
          subject.bit_rate.should == 128000
        end
      end
      describe 'Test Case 202' do
        let(:input) { "1, Unknown (AC3) (1.0 ch) (iso639-2: und), 48000Hz, 192000bps" }
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
          subject.title.should == "1.0 ch"
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
      describe 'Test Case 203' do
        let(:input) { "4, Unknown (AC3) (5.1 ch) (iso639-2: und), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
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
      describe 'Test Case 204' do
        let(:input) { "1, Unknown (AC3) (1.0 ch) (iso639-2: und), 48000Hz, 96000bps" }
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
          subject.title.should == "1.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 205' do
        let(:input) { "4, Francais (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Francais (AC3)"
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
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 206' do
        let(:input) { "7, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 7
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 207' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 208' do
        let(:input) { "1, Unknown (AC3) (2.0 ch) (iso639-2: und), 48000Hz, 96000bps" }
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 209' do
        let(:input) { "2, English (AC3) (Visually Impaired) (5.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Visually Impaired"
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
      describe 'Test Case 210' do
        let(:input) { "2, English (AC3) (Director's Commentary 1) (1.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
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
      describe 'Test Case 211' do
        let(:input) { "5, Espanol (AC3) (2.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
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
      describe 'Test Case 212' do
        let(:input) { "6, Japanese (AC3) (2.0 ch) (iso639-2: jpn), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese"
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
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 213' do
        let(:input) { "7, Francais (AC3) (2.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 7
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
      describe 'Test Case 214' do
        let(:input) { "3, Francais (AC3) (Director's Commentary 1) (2.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Francais (AC3)"
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
          subject.isolanguage.should == "fra"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 215' do
        let(:input) { "2, Japanese (AC3) (2.0 ch) (iso639-2: jpn), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese"
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
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 216' do
        let(:input) { "1, English (AC3) (Director's Commentary 2) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 2)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
        let(:input) { "1, English (AC3) (Director's Commentary 2) (2.0 ch) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
      describe 'Test Case 218' do
        let(:input) { "4, English (AC3) (Director's Commentary 1) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 219' do
        let(:input) { "5, English (AC3) (Director's Commentary 2) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 2)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 220' do
        let(:input) { "2, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 221' do
        let(:input) { "2, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 224000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 222' do
        let(:input) { "4, Espanol (AC3) (1.0 ch) (iso639-2: spa), 48000Hz, 192000bps" }
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
      describe 'Test Case 223' do
        let(:input) { "6, English (AC3) (Director's Commentary 1) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 6
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 1"
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
      describe 'Test Case 224' do
        let(:input) { "1, English (AC3) (Director's Commentary 1) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
      describe 'Test Case 225' do
        let(:input) { "3, Chinese (AC3) (5.1 ch) (iso639-2: zho), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "Chinese"
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
          subject.isolanguage.should == "zho"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 226' do
        let(:input) { "4, Thai (AC3) (5.1 ch) (iso639-2: tha), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Thai"
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
          subject.isolanguage.should == "tha"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 227' do
        let(:input) { "4, English (DTS) (5.1 ch) (iso639-2: eng), 48000Hz, 768000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
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
      describe 'Test Case 228' do
        let(:input) { "2, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 256000bps" }
        it 'track should be parsed' do
          subject.track.should == 2
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 256000
        end
      end
      describe 'Test Case 229' do
        let(:input) { "2, Espanol (AC3) (2.0 ch) (iso639-2: spa), 48000Hz, 224000bps" }
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 230' do
        let(:input) { "1, Francais (AC3) (2.0 ch) (iso639-2: fra), 48000Hz, 192000bps" }
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
      describe 'Test Case 231' do
        let(:input) { "4, Japanese (AC3) (5.1 ch) (iso639-2: jpn), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Japanese"
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
          subject.isolanguage.should == "jpn"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 232' do
        let(:input) { "4, Portugues (AC3) (2.0 ch) (iso639-2: por), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues"
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
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 233' do
        let(:input) { "4, Portugues (AC3) (5.1 ch) (iso639-2: por), 48000Hz, 448000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Portugues"
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
          subject.isolanguage.should == "por"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 448000
        end
      end
      describe 'Test Case 234' do
        let(:input) { "1, Espanol (AC3) (2.0 ch) (iso639-2: spa), 48000Hz, 224000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
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
          subject.bit_rate.should == 224000
        end
      end
      describe 'Test Case 235' do
        let(:input) { "1, English (AC3) (2.0 ch) (iso639-2: eng), 48000Hz, 128000bps" }
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
          subject.bit_rate.should == 128000
        end
      end
      describe 'Test Case 236' do
        let(:input) { "4, English (AC3) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 128000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 128000
        end
      end
      describe 'Test Case 237' do
        let(:input) { "5, English (AC3) (Director's Commentary 2) (2.0 ch) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 5
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "Director's Commentary 2"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 238' do
        let(:input) { "4, Chinese (AC3) (5.1 ch) (iso639-2: zho), 48000Hz, 384000bps" }
        it 'track should be parsed' do
          subject.track.should == 4
        end
        it 'language should be parsed' do
          subject.language.should == "Chinese"
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
          subject.isolanguage.should == "zho"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 384000
        end
      end
      describe 'Test Case 239' do
        let(:input) { "1, Chinese (AC3) (2.0 ch) (iso639-2: zho), 48000Hz, 192000bps" }
        it 'track should be parsed' do
          subject.track.should == 1
        end
        it 'language should be parsed' do
          subject.language.should == "Chinese"
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
          subject.isolanguage.should == "zho"
        end
        it 'sample_rate should be parsed' do
          subject.sample_rate.should == 48000
        end
        it 'bit_rate should be parsed' do
          subject.bit_rate.should == 192000
        end
      end
      describe 'Test Case 240' do
        let(:input) { "4, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 384000bps" }
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
      describe 'Test Case 241' do
        let(:input) { "3, English (AC3) (Director's Commentary 1) (2.0 ch) (Dolby Surround) (iso639-2: eng), 48000Hz, 96000bps" }
        it 'track should be parsed' do
          subject.track.should == 3
        end
        it 'language should be parsed' do
          subject.language.should == "English (AC3) (Director's Commentary 1)"
        end
        it 'codec should be parsed' do
          subject.codec.should == "2.0 ch"
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
          subject.bit_rate.should == 96000
        end
      end
      describe 'Test Case 242' do
        let(:input) { "1, Unknown (AC3) (1.0 ch) (iso639-2: und), 48000Hz, 64000bps" }
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
          subject.title.should == "1.0 ch"
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
          subject.bit_rate.should == 64000
        end
      end
      describe 'Test Case 243' do
        let(:input) { "1, English (AC3) (4.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }
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
          subject.title.should == "4.1 ch"
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
    end
  end
end
