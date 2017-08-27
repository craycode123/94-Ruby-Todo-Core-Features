def shuffle(array)
  # Implement the shuffle method
  shuffled_array = [] #shuffled result will be stored in this array
  #display
  puts "Roll\tScratch\t\t\t\tResult"
  while !array.empty?
    #draw a number randomly
    roll = array.sample

    #remove the last element
    *head, tail = array
    if roll != tail
      #replace the selected element with the last element
      head[head.index(roll)] = tail
    end
    array = head

    #store the selected element in a new array
    shuffled_array << roll

    #display
    puts "#{roll}\t#{array}".ljust(35) + shuffled_array.to_s
  end
  "The shuffled array is " + shuffled_array.to_s
end


# Driver code:
sorted_array = (1..10).to_a

# This should print a different sequence of numbers each time
p shuffle(sorted_array)
p shuffle(sorted_array)
p shuffle(sorted_array)
