def to_roman(num)
  # Your code here
  rome = ''
  onesPlace = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
  tensPlace = ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  hundredsPlace = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM", ]
  thousandsPlace = ["M", "MM", "MMM"]

  #check thousands
  write = num/1000
  left = num%1000
  if write > 0 #means more than 1000
    rome = rome + thousandsPlace[write-1]
  end

  #check hundreds
  write = left/100
  left = left%100
  if write > 0 #means more than 100
    rome = rome + hundredsPlace[write-1]
  end

  #check tens
  write = left/10
  left = left%10
  if write > 0 #mean more than 10
    rome = rome + tensPlace[write-1]
  end

  #remaining
  if left > 0
    rome = rome + onesPlace[left-1]
  end

  rome
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?
puts to_roman(4)
puts to_roman(1000)
puts to_roman(3000)
