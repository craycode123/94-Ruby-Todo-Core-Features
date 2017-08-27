require 'rspec'
require_relative 'manipulate'
describe "manipulate.rb\:" do
  describe "manipulate(\"hello\", \"e\")" do
    it "should return \`hEllo\`" do
      expect(manipulate("hello", "e")).to eq "hEllo"
    end
  end

  describe "manipulate(\"hello\", \"l\")" do
    it "should return \`heLlo\`" do
      expect(manipulate("hello", "l")).to eq "heLlo"
    end
  end
end
