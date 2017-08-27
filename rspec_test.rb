require "rspec"
require_relative 'shuffle'

describe "shuffle.rb" do
  describe "#shuffle" do
    let(:test_array){ [1,2,3,4,5,6] }

    it "should not use Array#shuffle method" do
      expect_any_instance_of(Array).not_to receive(:shuffle)
      shuffle(test_array)
    end

    it "should not use Array#sort_by method" do
      expect_any_instance_of(Array).not_to receive(:sort_by)
      shuffle(test_array)
    end

    it "should return randomized array of numbers based on input array" do
      result = shuffle(test_array)
      expect(result) != test_array
      expect(result.sort) == test_array
    end
  end
end
