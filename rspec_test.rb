require 'rspec'
require_relative 'pig_latin.rb'

describe "pig_latin.rb" do
  describe "convert_word_to_pig_latin(\"hello\")" do
    it "should return \`ellohay\`" do
      expect(convert_word_to_pig_latin("hello")).to eq "ellohay"
    end
  end

  describe "convert_word_to_pig_latin(\"aye\")" do
    it "should return \`aye\`" do
      expect(convert_word_to_pig_latin("aye")).to eq "aye"
    end
  end

  describe "convert_sentence_to_pig_latin(\"hello world\")" do
    it "should return \"ellohay orldway\"" do
      expect(convert_sentence_to_pig_latin("hello world")).to eq "ellohay orldway"
    end
  end

  describe "convert_sentence_to_pig_latin(\"aye sir\")" do
    it "should return \"aye irsay\"" do
      expect(convert_sentence_to_pig_latin("aye sir")).to eq "aye irsay"
    end
  end
end
