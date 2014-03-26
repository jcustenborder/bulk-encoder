require File.expand_path('../../spec_helper.rb', __FILE__)
require 'bulkencoder'

module BulkEncoder
  describe AudioTrack do
    subject do
      AudioTrack.new input
    end

    describe '#<=>' do
      describe 'Compare Case 1' do
        let(:input) { "1, English (AC3) (5.1 ch) (iso639-2: eng), 48000Hz, 448000bps" }

        it 'should be less than' do
          other = AudioTrack.new "2, English (DTS-ES) (6.1 ch) (iso639-2: eng), 48000Hz, 768000bps"

          expect(subject).to be < other
        end

      end

    end
  end
end
