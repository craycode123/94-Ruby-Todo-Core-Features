def to_roman(num)

  rome = ""

  #thousandsPlace = ["M", "MM", "MMM"]
  if num >= 1000
    x = num/1000
    rome += "M" * x
    num = num % 1000
  end

  #hundredsPlace = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM", ]
  if num >= 900
    rome += "CM"
    num -= 900
  elsif num >= 500
    x = num/500
    rome += "D"
    num = num % 500
  end

  if num >= 400
    rome += "CD"
  elsif num >= 100
    x = num/100
    rome += "C" * x
  end
  num = num % 100

  #tensPlace = ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  if num >= 90
    rome += "XC"
    num -= 90
  elsif num >= 50
    x = num/50
    rome += "L"
    num = num % 10
  end

  if num >= 40
    rome += "XL"
  elsif num >= 10
    x = num/10
    rome += "X" * x
  end
  num = num % 10

  #onesPlace = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
  if num == 9
    rome += "IX"
    num = 0
  elsif num >= 5
    x = num/5
    rome += "V"
    num = num % 5
  end

  num == 4 ? rome += "IV" : rome += "I" * num

  return rome

end

p to_roman(193)
