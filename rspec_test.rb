require 'rspec'
require_relative 'benchmarking'
describe "benchmark" do
  it "takes a block as an argument and implement yield to perform the block" do
    expect{ |b| benchmark(&b) }.to yield_control
  end

  it "returns the approximate time needed to perform a program" do
    string = 20000.times.collect{"x"}.join("")
    result = benchmark { string.reverse }
    expect(result.class).to eq Float
  end
end
