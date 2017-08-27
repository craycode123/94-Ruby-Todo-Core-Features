require 'rspec'
require_relative 'scope'

describe "BasicClass" do
  let(:object) { BasicClass.new("var") }

  describe "#initialize" do
    it "should take 1 argument and set @instance_var" do
      expect{ BasicClass.new }.to raise_error ArgumentError
      expect( object.instance_variable_get(:@instance_var) ).to eq "var"
    end
  end

  it "should have instance method #get_local_var" do
    expect{ object.get_local_var }.not_to raise_error
    expect( object.get_local_var ).not_to eq nil
  end

  describe "(getter/setter method)" do
    it "#get_instance_var should return @instance_var" do
      expect(object.get_instance_var).to eq object.instance_variable_get(:@instance_var)
    end

    it "#set_instance_var= should take 1 argument and set @instance_var" do
      expect(object.set_instance_var=('another value')).to eq "another value"
    end
  end

  it "should have class variable @@class_var" do
    expect(BasicClass.class_variable_get(:@@class_var)).not_to eq nil
  end

  describe "(getter/setter method)" do
    it "#get_class_var should return @@class_var" do
      expect(object.get_class_var).to eq BasicClass.class_variable_get(:@@class_var)
    end

    it "#set_class_var= should take 1 argument and set @@class_var" do
      expect(object.set_class_var=('another value')).to eq "another value"
    end
  end

  it "should have \"global_var\"" do
    expect($global_var).not_to eq nil
  end

  it "should have constant THIS_IS_A_CONSTANT" do
    expect(BasicClass::THIS_IS_A_CONSTANT).not_to eq nil
  end
end
