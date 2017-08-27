# Implement the #linear_search method
random_numbers = [6, 29, 18, 2, 72, 19, 18, 10, 37]
def linear_search(num, array)
  i = 0
  until array[i]==nil
    # while i <= array.index(array.last)
    return i if num == array[i] ; i += 1
  end
end
p linear_search(18, random_numbers)
p linear_search(9, random_numbers)
# Implement the #global_linear_search method
bananas_arr = "bananas".split(//)
def global_linear_search(char, array)
  i = 0 ; indices = []
  while i <= array.index(array.last)
    indices << i if char == array[i]
    i += 1
  end
  indices
end
p global_linear_search("a",bananas_arr)
