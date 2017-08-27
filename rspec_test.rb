require 'rspec'
require_relative 'company'

def should_have_attr_accessor(obj, column_name)
  file = File.read "company.rb"
  expect(file).to match(/attr_accessor.+#{column_name}/), "expected attr_accessor for #{column_name}, but got none"

  writer = column_name.to_s + "="
  expect(obj).to respond_to column_name
  expect(obj).to respond_to writer.to_sym
end

def should_have_attr_reader(obj, column_name)
  file = File.read "company.rb"
  expect(file).to match(/attr_reader.+#{column_name}/), "expected attr_reader for #{column_name}, but got none"

  expect(obj).to respond_to column_name
end

describe "Company" do
  let(:company) { Company.new('Next Academy') }

  it "should have attr_accessor :company_name" do
    should_have_attr_accessor(company, :company_name)
  end

  it "should have attr_reader :employees" do
    should_have_attr_reader(company, :employees)
  end
end

describe "Employee" do
  let(:employee) { Employee.new("Josh", "Master Of The Bootiverse") }

  it "should have attr_accessor :name" do
    should_have_attr_accessor(employee, :name)
  end

  it "should have attr_accessor :position" do
    should_have_attr_accessor(employee, :position)
  end

  it "should have attr_reader :id" do
    should_have_attr_reader(employee, :id)
  end
end
