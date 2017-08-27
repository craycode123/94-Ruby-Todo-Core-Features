# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_reader :age, :height
  def initialize
    @age = 0
    @height = 0
    @num_of_oranges = []
  end

  # Ages the tree one year
  def age!
    @age += 1
    @height += 0.5
    rand(100).times {@num_of_oranges << Orange.new(rand(0.5))} if @age > 4
  end

  def dead?
    @age >= 20
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @num_of_oranges.length > 0
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    # orange-picking logic goes here
    @num_of_oranges.delete_at(0)
  end
end

class Orange
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end
end

#######################################################################
## Driver code:

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # It places the oranges in the basket
  while tree.any_oranges?
    basket << tree.pick_an_orange!.diameter
  end

  avg_diameter = basket.inject(0,:+)/basket.length
      # It's up to you to calculate the average diameter for this harvest.

      puts "Year #{tree.age} Report"
      puts "Tree height: #{tree.height} feet"
      puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
      puts ""

      # Age the tree another year
      tree.age!
    end

    puts "Alas, the tree, she is dead!"
