require 'rspec'
require_relative 'bank'

describe "BankAccount" do

  it "should be initialized with 3 arguments" do
    expect{BankAccount.new}.to raise_error ArgumentError
    expect{BankAccount.new("Junipero Serra", "Checking", "347-923-239")}.not_to raise_error
  end

  it "should have getter methods for customer_name and type" do
    my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
    expect(my_acct.customer_name).to be_a String
    expect(my_acct.type).to be_a String
  end

  describe "#to_s" do
    it "should return string containing customer_name and type" do
      my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
      expect(my_acct.to_s).to match my_acct.customer_name
      expect(my_acct.to_s).to match my_acct.type
    end

    it "should return string containing hidden account_number" do
      my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
      expect(my_acct.to_s).to match(/239/)
      expect(my_acct.to_s).not_to match(/327/)
      expect(my_acct.to_s).not_to match(/923/)
    end
  end

  it "should have private method #acct_number" do
    my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
    expect{my_acct.acct_number}.to raise_error NoMethodError
    expect(my_acct.send(:acct_number)).to eq "347-923-239"
  end
end
