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
puts "input | expected | actual"
puts "--------|----------|-------"
puts " 4  |    IV    | #{to_roman(4)}"
puts " 9  |    IX    | #{to_roman(9)}"
puts " 13 |   XIII   | #{to_roman(13)}"
puts " 1453 |  MCDLIII | #{to_roman(1453)}"
puts " 1646 |  MDCXLVI | #{to_roman(1646)}"

puts "Arabic Roman"
puts "     4 #{to_roman(4)}"
puts "     9 #{to_roman(9)}"
puts "    14 #{to_roman(14)}"
puts "    44 #{to_roman(44)}"
puts "   944 #{to_roman(944)}"
