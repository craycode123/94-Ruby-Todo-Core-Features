# Implement an iterative version of the factorial function
def factorial_iterative(n)
  if n < 0
    "Invalid input"
  elsif n == 0
    1
  else
    total = n
    while n > 1
      total *= n-1
      n -= 1
    end
    total
  end
end
p factorial_iterative(0)
p factorial_iterative(-1)
p factorial_iterative(8)
# Implement a recursive version of the factorial function
def factorial_recursive(n)
  if n < 0
    "Invalid input"
  elsif n == 0
    1
  else
    n *= factorial_recursive(n-1)
  end
end
puts factorial_recursive(0) == 1
puts factorial_recursive(-1) == "Invalid input"
puts factorial_recursive(9) == 362880
