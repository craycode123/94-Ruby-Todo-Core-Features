require 'rspec'
require_relative 'linear_search'

describe "linear_search.rb" do
  let(:random_numbers) {[6, 29, 18, 2, 72, 19, 18, 10, 37]}
  let(:bananas_arr){ ["b", "a", "n", "a", "n", "a", "s"] }

  describe "#linear_search(29, random_numbers)" do
    it "should return 1" do
      expect(linear_search(29, random_numbers)).to eq 1
    end
  end

  describe "#linear_search(40, random_numbers)" do
    it "should return nil" do
      expect(linear_search(40, random_numbers)).to eq nil
    end
  end

  describe "global_linear_search(\"n\", bananas_arr)" do
    it "should return [2, 4]" do
      expect(global_linear_search("n", bananas_arr)).to eq [2, 4]
    end
  end
end
