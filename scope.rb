# Start coding here.
##local variables and methods
# def get_local_var(var)
#   p var
#   var = 234
#   p var
# end

# local_var = 123
# get_local_var(local_var)

##classes and instance variables ##getters and setters
$global_var = "glob"
class BasicClass
  THIS_IS_A_CONSTANT = "CONSTANT"

  attr_accessor :instance_var
  def initialize
    @instance_var = 123
  end

  def self.class_var
    @@class_var ||= "class"
  end

  def get_local_var(var)
    p var
    var = 234
    p var
  end
end

class AnotherClass
  def get_global_var
    $global_var
  end
end

basic2 = BasicClass.new
basic3 = BasicClass.new
p basic2.instance_var
basic2.instance_var = "abc"
basic3.instance_var = "def"
p basic2.instance_var
p basic3.instance_var

p BasicClass.class_var
BasicClass.class_var.replace "changed"
p BasicClass.class_var

another = AnotherClass.new
p another.get_global_var
p BasicClass::THIS_IS_A_CONSTANT

# basic = BasicClass.new
# basic.get_local_var(123)
# basic1 = BasicClass.new
# p basic1.get_instance_var
# p basic1.set_instance_var = 789
