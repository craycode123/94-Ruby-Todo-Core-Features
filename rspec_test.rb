require 'rspec'
require_relative 'prime_factors'
describe "prime_factors.rb" do
  describe "#prime_factors(8)" do
    it "should return [2,2,2]" do
      expect(prime_factors(8)).to eq [2, 2, 2]
    end
  end

  describe "#prime_factors(6760)" do
    it "should return [2, 2, 2, 5, 13, 13]" do
      expect(prime_factors(6760)).to eq [2, 2, 2, 5, 13, 13]
    end
  end
end
