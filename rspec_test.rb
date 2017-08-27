require 'rspec'
require_relative 'roman_numerals'
describe "roman_numerals.rb" do
  describe "#to_roman" do
    context "when input is 4" do
      it "should return \"IV\"" do
        expect(to_roman(4)).to eq "IV"
      end
    end

    context "when input is 9" do
      it "should return \"IX\"" do
        expect(to_roman(9)).to eq "IX"
      end
    end

    context "when input is 13" do
      it "should return \"XIII\"" do
        expect(to_roman(13)).to eq "XIII"
      end
    end

    context "when input is 1453" do
      it "should return \"MCDLIII\"" do
        expect(to_roman(1453)).to eq "MCDLIII"
      end
    end

    context "when input is 1646" do
      it "should return \"MDCXLVI\"" do
        expect(to_roman(1646)).to eq "MDCXLVI"
      end
    end
  end
end
