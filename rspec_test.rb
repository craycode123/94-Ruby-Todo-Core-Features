require 'rspec'

require_relative 'exercise1'
require_relative 'exercise2'
require_relative 'exercise3'
# Exercise 1 : While sum_to
describe '#sum_to' do
  it 'should take in an argument' do
    expect{sum_to(10)}.not_to raise_error
  end

  it 'should result in 55 if 10 is given as an argument I.e. sum_to(10)' do
    expect(sum_to(10)).to eq 55
  end

  it 'should result in 7626 if 123 is given as an argument' do
    expect(sum_to(123)).to eq 7626
  end
end


# Exercise 2 : While room_temp
describe '#run' do
  # Set default happy parameters
  let(:correct_input){"20"}
  let(:stub_correct_input) do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(correct_input)
  end

  # Check for gets.chomp
  it "should prompt the user for input" do
    stub_correct_input
    expect_any_instance_of(Kernel).to receive(:gets)
    allow_any_instance_of(NilClass).to receive(:chomp)
    run
  end

  # Happy scenario
  context "when input is 20 or higher" do
    before(:each) { stub_correct_input }

    it "should say 'Air Conditioner is off' if room_temperature > 20" do
      expect { run }.to output("Air Conditioner is off\n").to_stdout
    end

    it "should not prompt user for any more input" do
      expect_any_instance_of(Kernel).to receive(:gets).once
      run
    end
  end

  # Non-happy scenario
  context "when input is 20 or lesser" do
    it "should continue prompting user for input" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("", "", correct_input)
      expect_any_instance_of(Kernel).to receive(:gets).at_least(3).times
      expect { run }.to output(/Air Conditioner is on/).to_stdout
      run
    end
  end
end
