#*to get and combine all arguments in a method definition
#splat operator '*' -> https://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/
def mean(*numbers)
  sum = numbers.inject(:+)

  return sum / numbers.length
end

#Instead of changing the method invocation, change the definition.
#In other words, rewrite the method so that it can take any number of arguments.
def run
  sample_avg = mean(5, 3, 6, 10)
  p sample_avg
end
#comment out the above code with your new solution

run
