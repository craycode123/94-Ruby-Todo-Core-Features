require 'rspec'
require_relative 'detecting_anagrams'

describe "detecting_anagrams.rb" do
  describe "is_anagram?" do
    context "when both words are anagrams" do
      let(:word_one) { "test" }
      let(:word_two) { "tset" }

      it "should return true" do
        expect(is_anagram?(word_one, word_two)).to eq true
      end

      context "regardless of uppercase/lowercase" do
        it "should return true" do
          expect(is_anagram?(word_one, word_two.upcase)).to eq true
        end
      end
    end

    context "both words are not anagrams" do
      let(:word_one) { "test" }
      let(:word_two) { "invalid" }

      it "should return false" do
        expect(is_anagram?(word_one, word_two)).to eq false
      end
    end
  end
end
