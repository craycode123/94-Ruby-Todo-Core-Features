describe "argument_error_1.rb" do
  before(:each) { load 'argument_error_1.rb' if File.exist?('argument_error_1.rb') }

  it "should not raise any errors" do
    expect{ run }.not_to raise_error
  end

  it "should not change the \"mean\" function" do
    expect{ mean(5,3,6,10) }.to raise_error ArgumentError
  end
end

describe "argument_error_2.rb" do
  before(:each) { load 'argument_error_2.rb' if File.exist?('argument_error_2.rb') }

  it "should not raise any errors" do
    expect{ run }.not_to raise_error
  end

  it "should allow the \"mean\" method to accept multiple arguements" do

    expect{ mean(5,6,7,8) }.not_to raise_error
  end
end

describe "type_error.rb" do
  before(:each){ load 'type_error.rb'  if File.exist?('type_error.rb')}
  let(:words) { %w{ all i can say is that my life is pretty plain } }
  let(:words_with_nil) { words.dup.insert(3, nil) }
  let(:mixed_array) { ["2", 1, "5", 4, "3"] }

  def custom_sort(array)
    converted_array = array.map{ |elem| elem.nil? ? "nil" : elem.to_s }
    converted_array.sort
  end

  it "should not raise any errors" do
    expect{ run }.not_to raise_error
  end

  describe "#print_and_sort(words)" do
    it "should print \"all i can say is that my life is pretty plain\"" do
      regex = /all i can say is that my life is pretty plain/
      expect{ print_and_sort(words) }.to output(regex).to_stdout
    end

    it "should sort words" do
      expect( print_and_sort(words) ).to eq custom_sort(words)
    end
  end

  describe "#print_and_sort(words_with_nil)" do
    it "should print \"all i can nil say is that my life is pretty plain\"" do
      regex = /all i can nil say is that my life is pretty plain/
      expect{ print_and_sort(words_with_nil)}.to output(regex).to_stdout
    end

    it "should sort words_with_nil"do
      expect( print_and_sort(words_with_nil) ).to eq custom_sort(words_with_nil)
    end
  end

  describe "#print_and_sort(mixed_array)" do
    it "should print \"2 1 5 4 3\"" do
      regex = /2 1 5 4 3/
      expect{ print_and_sort(mixed_array) }.to output(regex).to_stdout
    end

    it "should sort mixed_array" do
      expect( print_and_sort(mixed_array) ).to eq custom_sort(mixed_array)
    end
  end
end
