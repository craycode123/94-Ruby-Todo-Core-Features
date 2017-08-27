require 'rspec'
require_relative 'fibonacci'
describe "fibonacci.rb" do
  describe "fibonacci_iterative(7)" do
    it "should return 13" do
      expect(fibonacci_iterative(7)).to eq 13
    end

    it "should not call itself" do
      expect(self).to receive(:fibonacci_iterative).once.and_call_original
      fibonacci_iterative(7)
    end
  end

  describe "fibonacci_recursive(6)" do
    it "should return 8" do
      expect(fibonacci_recursive(6)).to eq 8
    end

    it "should call itself" do
      expect(self).to receive(:fibonacci_recursive).with(6).and_call_original
      expect(self).to receive(:fibonacci_recursive).with(5) { 5 }
      expect(self).to receive(:fibonacci_recursive).with(4) { 3 }
      fibonacci_recursive(6)
    end
  end
end
