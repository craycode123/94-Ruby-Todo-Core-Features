require 'rspec'
require_relative 'generating_anagrams'
describe "generating_anagrams.rb" do
  describe "#anagrams_for" do
    let(:word) { 'Cesar' }
    let(:dictionary) { ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm'] }
    let(:anagrams) { ['acres', 'cares', 'Cesar', 'races'] }

    it "returns an array of anagrams for the word based on the dictionary array" do
      expect(anagrams_for(word, dictionary)).to eq anagrams
    end
  end
end
