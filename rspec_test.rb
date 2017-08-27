require 'rspec'
describe "exercise1.rb" do
  before(:all){ require_relative "exercise1.rb" }

  describe "#sum_to(10)" do
    it "should return 55" do
      expect(sum_to(10)).to eq 55
    end

    it "should use \"for\"loop" do
      expect_any_instance_of(Kernel).to receive(:for).at_least(1).times
    end

    it "should not use \"while\" loop" do
      expect_any_instance_of(Kernel).not_to receive(:while)
    end
  end
end

describe "exercise2.rb" do
  before(:all){ require_relative "exercise2.rb" }

  describe "#diamond(num,char)" do
    it "should return 41" do
      expect(diamond(4, "*")).to eq 41
    end

    it "should use \"for\"loop" do
      expect_any_instance_of(Kernel).to receive(:for).at_least(1).times
    end

    it "should not use \"while\" loop" do
      expect_any_instance_of(Kernel).not_to receive(:while)
    end
  end
end

describe "exercise3.rb" do
  before(:all){ require_relative "exercise3.rb" }

  describe "#hollow_diamond(num,char)" do
    it "should return 16" do
      expect(diamond(4, "*")).to eq 16
    end

    it "should use \"for\"loop" do
      expect_any_instance_of(Kernel).to receive(:for).at_least(1).times
    end

    it "should not use \"while\" loop" do
      expect_any_instance_of(Kernel).not_to receive(:while)
    end
  end
end
