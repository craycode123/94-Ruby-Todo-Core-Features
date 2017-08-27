##########
#Method 1#
##########
def prime_factors(n)
  prime = find_prime(n)
  #get the list of prime factors needed to multiply to the number given
  list = []
  for i in 0..(prime.index(prime.last))
    a = n ;  b = 0
    while a != 1 && b == 0
      list << prime[i]
      a /= prime[i] ;  b = (a % prime[i])
    end
  end
  list
end

def find_prime(x)
  factors = [] ; num = 2 ; return num if x < 2
  2.upto(x-1) { |num|
    if (x % num == 0) ; count = 0 #check if it is factors
      for i in 2..num-1           #if yes, check if it's prime number
        count += 1 if (num % i == 0)
      end
      factors.push(num) if count == 0 #store in factors if it's prime factors
  end }
  factors
end

##########
#Method 2#
##########
=begin
def prime_factors(n)
  #find and store all the factors in an array
  factors = find_factors(n)
  #filter through all the factors to get only the prime factors
  prime = find_prime(factors)
  p prime
  #get the list of prime factors needed to multiply to the number given
  list = [] ; i = 0
  while i <= prime.index(prime.last)
    a = n ; b = 0
    while a != 1 && b == 0
      list << prime[i]
      a /= prime[i]
      b = a % prime[i]
    end
    i += 1
  end
  list
end

def find_prime(factors)
  prime = []
  factors.find_all do |x|
    count = 0
    for i in 2..x-1
      count += 1 if x % i==0
    end
    prime.push(x) if count == 0 
  end
end

def find_factors(n)
  array = [] ; p = 2 
  while (p <= n)
    array.push(p) if (n % p == 0)
    p += 1
  end
  array
end
=end
p prime_factors(873)
p prime_factors(12056)
#p prime_factors(3)
#p prime_factors(6)
#p prime_factors(8)
#p prime_factors(25)
#p prime_factors(123123123)
