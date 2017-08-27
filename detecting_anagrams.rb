# Write your solution here!
=begin
def is_anagram?(word1, word2)
  #can also use 'chars' instead of 'split'
  word1.downcase.split(//).sort == word2.downcase.split(//).sort
end
=end
def canonical(word)
  word = word.downcase.split(//).sort
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end

#=> true
puts is_anagram?('cinema', 'iceman')
puts is_anagram?('iceman', 'cinema')
puts is_anagram?('pants', 'pants')
puts is_anagram?('CiNemA', 'iceman')
puts is_anagram?('abcde2', 'c2abed')

#=> false
puts is_anagram?('pants', 'turtle')
puts is_anagram?('123123', 'kjhasd')
