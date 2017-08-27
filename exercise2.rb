# Write your code here
def diamond(num, char)
  for i in 1..num
    (num-i).times {print " "}
    (i*2-1).times {print char}
    puts
  end
  for i in 1..(num-1)
    i.times {print " "}
    ((num-i)*2-1).times {print char}
    puts
  end
end

diamond(5, "*")
