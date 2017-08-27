require 'csv'

class Person
  attr_reader :id, :first_name, :last_name, :email, :phone, :created_at
  # Look at the CSV file
  # What attributes should a Person object have?
  def initialize(args = {})
    @id = args[:id]
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @email = args[:email]
    @phone = args[:phone]
    @created_at = args[:created_at]
  end
end

class PersonParser
  attr_reader :file

  def initialize(file)
    @file = file
    @people = nil
  end

  def people
    # If we've already parsed the CSV file, don't parse it again.
    # Remember: @people is +nil+ by default.
    return @people if @people

    # We've never called people before, now parse the CSV file
    # and return an Array of Person objects here.  Save the
    # Array in the @people instance variable.
    # data = CSV.read(file, headers:true)
    # data.each do |row|
    #   @people = [] << Person.new(row)
    # end

    @people = []
    CSV.foreach(file, :headers=>true, :converters=>:all,
    :header_converters=>lambda { |h| h.to_sym}) do |row|
      @people << Person.new(row)
    end
    @people
  end

  def add_person(person)
    @people << person
  end

  def save
    per = @people[-1]
    ppl = [] << @people.length << per.first_name << per.last_name << per.email << per.phone << per.created_at

    CSV.open(file, "a+").add_row(ppl)
  end
end

parser = PersonParser.new('people.csv')

puts "There are #{parser.people.size} people in the file '#{parser.file}'."

parser.add_person(Person.new(email:"jasmin0123@hotmail.com",phone:"0123456789",first_name:"Jas",last_name:"Tsai",created_at:Time.now))

parser.save
