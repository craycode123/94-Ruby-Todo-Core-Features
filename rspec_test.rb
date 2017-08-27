require 'rspec'
require_relative 'regex_exercise'
describe 'regexp' do
  describe 'hide_serial' do
    it 'should return value XXXXXX-XX-1234' do
      string = '123456-12-1234'
      expect(hide_serial(string)).to eq('XXXXXX-XX-1234')
    end
  end
  describe 'hide_digits' do
    it 'should replace all digits with - symbol' do
      string = 'You have 100 dollars'
      expect(hide_digits(string)).to eq('You have --- dollars')
    end
  end
  describe 'hide_last_four' do
    it 'should replace last 4 digits of each group to ****' do
      string = '12-34-5678, 90-80-7012, 45-65-1234'
      expect(hide_last_four(string)).to eq("12-34-****, 90-80-****, 45-65-****")
    end
  end
end
