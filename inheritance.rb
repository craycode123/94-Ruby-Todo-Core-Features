# Start coding here.
class Animal
  def initialize
    @num_legs = 0
  end
end

class Mammal < Animal
  def initialize
    @blood = "warm blooded"
  end
end

class Amphibian < Animal
end

class Primate < Mammal
  def initialize
    super
    @num_legs = 2
  end
end

class Frog < Amphibian
end

class Bat < Mammal
end

class Chimpanzee < Primate
end

animal = Primate.new
