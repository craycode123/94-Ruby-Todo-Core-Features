# Place your solutions here
# Implement a method named binary_search
##########
#Method 1#
##########
def binary_search(num, array)
  low = 0 ;  high = array.length - 1 ;  median = high/2 ;
  reduced_array = [] ;  find = [num]
  return -1 if array&find == [] #if the number given is not in the array

  while reduced_array != find
    if array[low..median]&find != []
      high = median
      reduced_array = array[low..median]
    else
      low = median + 1
      reduced_array = array[median+1..high]
    end
    median = (low+high)/2
  end
  low
end
##########
#Method 2#
##########
=begin
def binary_search(num, array)
  #check the size of the array
  start = 0 ; last = array.length - 1 ; median = last/2 ;
  #check the number whether it's in first half or second half
  find = [num]
  # count = -1 if array&find == []
  # array[0..median]&find != [] ? count = start : count = median + 1
  if array&find == []
    count = -1
  else
    array[0..median]&find != [] ? count = start : count = median + 1
    while array[count] != num
      count += 1
    end
  end
  count
end
=end
############################################
p binary_search(32, [13,19,24,29,32,37,43])

test_array = (100..200).to_a
puts binary_search(135, test_array) == 35

test_array = [13,19,24,29,32,37,43]
puts binary_search(35, test_array) == -1
