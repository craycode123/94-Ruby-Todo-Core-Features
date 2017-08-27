require 'rspec'
require "dictionary_sort.rb"

describe "dictionary_sort.rb" do
  describe "#run" do
    context "when user inputs a list of movies \(Iron Man, Captain America, Spider Man\) and presses Enter" do
      it "should print the movies in alphabetical order" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return("Iron Man", "Captain America", "Spider Man", "")
        regex = /Captain America\nIron Man\nSpider Man/
        expect{run}.to output(regex).to_stdout
      end
    end
  end
end
