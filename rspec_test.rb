require 'rspec'
require_relative 'factorial'
describe "factorial.rb" do
  describe "#factorial_iterative(8)" do
    it "should return 40320" do
      expect(factorial_iterative(8)).to eq 40320
    end

    it "should not call itself within itself" do
      expect(self).to receive(:factorial_iterative).once.and_call_original
      factorial_iterative(8)
    end
  end

  describe "#factorial_recursive(6)" do
    it "should return 720" do
      expect(factorial_recursive(6)).to eq 720
    end

    it "should call itself within itself" do
      expect(self).to receive(:factorial_recursive).with(6).and_call_original
      # provide 120 return after intercepting call
      expect(self).to receive(:factorial_recursive).with(5) { 120 }
      factorial_recursive(6)
    end
  end
end
