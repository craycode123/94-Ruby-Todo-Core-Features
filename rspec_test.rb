require 'rspec'
require_relative 'deaf_aunty'

describe "deaf_aunty.rb" do
  let(:correct_input){ "I love ya, aunty, but I've got to go." }
  let(:stub_correct_input) do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(correct_input)
  end

  it "should prompt the user for input" do
    stub_correct_input
    expect_any_instance_of(Kernel).to receive(:gets)
    allow_any_instance_of(NilClass).to receive(:chomp)
    deaf_aunty
  end

  context "when input is exactly \"I love ya, aunty, but I've got to go.\"" do
    before(:each) { stub_correct_input }

    it "should print \"Aunty allows you to leave.\" in terminal " do
      expect { deaf_aunty }.to output(/Aunty allows you to leave./).to_stdout
    end

    it "should not prompt user for any more input" do
      expect_any_instance_of(Kernel).to receive(:gets).once
      deaf_aunty
    end
  end

  context "when incorrect input" do
    context "(all uppercase)" do
      it "should print \"NO, WE CANNOT DO THAT!\"" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return("ALL UPPERCASE", correct_input)
        expect { deaf_aunty }.to output(/NO, WE CANNOT DO THAT!/).to_stdout
      end
    end

    context "(not all uppercase)" do
      it "should print \"HUH?! SPEAK UP, SANDRA!\"" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return("something Else", correct_input)
        expect { deaf_aunty }.to output(/HUH\?! SPEAK UP, SANDRA!/).to_stdout
      end
    end

    it "should continue prompting user for input" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("something", "something", correct_input)
      expect_any_instance_of(Kernel).to receive(:gets).at_least(3).times
      deaf_aunty
    end
  end
end
