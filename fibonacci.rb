def fibonacci_iterative(n)
  array = [] ; array[0]=0 ; array[1]=1 ; i=2
  while i <= n
    array[i] = array[i-1] + array[i-2]
    i +=1
  end
  array[n]
end
p fibonacci_iterative(5)
=begin
def fibonacci_recursive(n)
  array = [] ; array[0]=0 ; array[1]=1
  if n > 1
    array[n] = fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
  array[n]
end
p fibonacci_recursive(5)
=end
