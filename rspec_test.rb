require 'rspec'
require_relative 'power_of_enumerables'

describe "print_odd_indexed_integers([2, 4, 6, 8, 10, 12])" do
  let(:action) { print_odd_indexed_integers([2, 4, 6, 8, 10, 12])  }

  it "should print \"4\\n8\\n12\"" do
    expect{ action }.to output(/4\n8\n12/).to_stdout
  end
end

describe "odd_integers([3, 4, 7, 9, 10, 16])" do
  let(:action) { odd_integers([3, 4, 7, 9, 10, 16]) }

  it "should return [3, 7, 9]" do
    expect(action).to eq [3, 7, 9]
  end
end

describe "first_under([13, 21, 7, 0, 11, 106], 10)" do
  let(:action){ first_under([13, 21, 7, 0, 11, 106], 10) }

  it "should return 7" do
    expect(action).to eq 7
  end
end

describe "add_bang([\"hi\", \"mom\"])" do
  let(:action) { add_bang(["hi", "mom"]) }

  it "should return [\"hi!\", \"mom!\"]" do
    expect(action).to eq ["hi!", "mom!"]
  end
end

describe "sum([1, 1, 2, 3, 5])" do
  let(:action) { sum([1, 1, 2, 3, 5]) }

  it "should return 12" do
    expect(action).to eq 12
  end
end

describe "sorted_triples(words)" do
  let(:words) { %w(the salted pork is particularly good) }
  let(:action) { sorted_triples(words) }

  it "should return [[\"pork\", \"salted\", \"the\"], [\"good\", \"is\", \"particularly\"]]" do
    expect(action).to eq [["pork", "salted", "the"], ["good", "is", "particularly"]]
  end

end
