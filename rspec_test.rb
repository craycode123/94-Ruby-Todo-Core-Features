require 'rspec'
require_relative 'binary_search'

describe "binary_search.rb" do
  describe "#binary_search(56, (1..200).to_a)" do
    let(:target) { 56 }
    let(:array) { (1..200).to_a }

    it "should return 55" do
      expect(binary_search(target, array)).to eq 55
    end
  end
end
