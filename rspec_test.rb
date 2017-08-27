require 'rspec'
require_relative 'syntax'
describe 'syntax.rb' do
  describe 'to_roman' do
    it 'should return \'CXCIII\' for input 193' do
      expect(to_roman(193)).to eq('CXCIII')
    end
  end
end
