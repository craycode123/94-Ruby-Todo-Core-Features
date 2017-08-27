require 'rspec'
require_relative 'atm'
require_relative 'calc'
require_relative 'pig_latin'

describe "pig_latin.rb" do
  context "when executing $ruby pig_latin.rb i love baseball" do
    it "should print \"i ovelay aseballbay\"" do
      regex = /i ovelay aseballbay/
      expect( %x(ruby pig_latin.rb i love baseball) ).to match regex
    end
  end

  context "when executing $ruby pig_latin.rb hello world" do
    it "should print \"ellohay orldway\"" do
      regex = /ellohay orldway/
      expect( %x(ruby pig_latin.rb ellohay orldway) ).to match regex
    end
  end
end

describe "calc.rb" do
  context "when executing $ruby calc.rb \"3 + 4\"" do
    it "should print \"7\"" do
      regex = /7/
      expect( %x(ruby calc.rb \"3 + 4\") ).to match regex
    end
  end

  context "when executing $ruby calc.rb \"50 * 6\"" do
    it "should print \"300\"" do
      regex = /300/
      expect( %x(ruby calc.rb \"50 * 6\") ).to match regex
    end
  end
end

describe "atm.rb" do
  context "when executing $ruby atm.rb add 10" do
    it "should print \"Your balance is now 20 dollars\"" do
      regex = /Your balance is now 20 dollars/
      expect( %x(ruby atm.rb add 10) ).to match regex
    end
  end

  context "when executing $ruby atm.rb withdraw 10" do
    it "should print \"Your balance is now 0 dollars\"" do
      regex = /Your balance is now 0 dollars/
      expect( %x(ruby atm.rb widthdraw 10) ).to match regex
    end
  end
end
