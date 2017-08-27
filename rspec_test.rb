require 'rspec'
require_relative 'method_chaining'

describe "method_chaining.rb" do
  describe "shout_backwards(\"hello, boot\")" do
    it "should return \"TOOB, OLLEH\"" do
      expect( shout_backwards("hello, boot") ).to eq "TOOB ,OLLEH!!!"
    end
  end

  describe "#squared_primes([1, 3, 4, 7, 42])" do

    it "should return [1, 9, 49]" do
      expect(squared_primes([1, 3, 4, 7, 42])).to eq [1, 9, 49]
    end
  end
end
