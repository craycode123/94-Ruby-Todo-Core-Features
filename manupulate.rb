# Write your code here
def manipulate(string, letter)
  position = Integer(string.index(letter))
  string[position] = letter.upcase
  puts string
end

manipulate("hello", "e")

=begin
def manipulate(string, letter)
  array = string.split(//)
  position = Integer(array.index(letter))
  array[position] = letter.upcase
  puts array.join
end

manipulate("hello", "e")
=end
