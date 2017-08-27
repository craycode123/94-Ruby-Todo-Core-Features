# Write a method call `sum_to` which takes in an integer as its argument. In the method, use a `while` loop and the assignment operator `+=` to find the sum of 1 to the given integer. For example, `sum_to(10)` should return the value 55.
def sum_to(num)
  result = 0
  j = 1
  while j <= num #or j != num + 1
    result += j
    j += 1
  end
  puts result
end

####
def sum_to2(num)
  result = 0
  while num != 0
    result += num
    num -= 1
  end
  puts result
end

sum_to(10)
sum_to(1)
sum_to(100)

sum_to2(10)
sum_to2(1)
sum_to2(100)
