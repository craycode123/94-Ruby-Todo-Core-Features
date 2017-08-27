# Write your code here
def diamond(num, char)
  for i in 1..num
    count = 1
    while count < num*2
      print (count == num-i+1 || count == num+i-1)? char : " "
      count += 1
    end
    puts
  end
  for i in 1..(num-1)
    count = 1
    while count < num*2
      print (count == i+1 || count == num*2-i-1)? char : " "
      count += 1
    end
    puts
  end
end

diamond(7, "*")
