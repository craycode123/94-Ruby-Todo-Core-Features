# Your code here to sort the array
def dictionary_sort(array)
  array = array.sort
end
#check if is number
def is_number(input)
  input.to_s == input.to_i.to_s
end
#check if is space
def is_space(input)
  input[0] == " "
end
# ...your code here to initialize the program and take user input
def run
  print "Type a word: "
  input = gets.chomp
  dictionary = Array.new
  while input != ""
    if is_number(input) || is_space(input)
      puts "            *please exclude numbers or spaces"
      print "Type another word (or press enter to finish): "
      input = gets.chomp
    else
      dictionary << input
      print "Type another word (or press enter to finish): "
      input = gets.chomp
    end
  end
  puts "Congratulations! Your dictionary has #{dictionary.length} words:"
  puts dictionary_sort(dictionary)
end

run
