# You can use your is_anagram? code from the previous challenge in this challenge
# Implement a method named "anagrams_for" and fulfill the challenge objectives
##########
#Method 1#
##########
def canonical(word)
  word = word.downcase.split(//).sort
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end

def anagrams_for(word,dictionary)
  array = []
  dictionary.each do |x|
    if is_anagram?(word, x)
      array << x
    end
  end
  array
end

##########
#Method 2#
##########
=begin
def anagrams_for(word,dictionary)
  word = word.downcase.split(//).sort
  array = []
  dictionary.each do |x|
    new_x = x.downcase.split(//).sort
    if new_x == word
      array << x
    end
  end
  array
end
=end
=begin
print "Key in a word: "
word = gets.chomp
puts "Now key in a list of words to check for anagrams."
puts "(Press 'Enter' after keying each word. Press 'Enter' twice after the last word.)"
input = gets.chomp
dictionary = []
while input != ""
  dictionary << input
  input = gets.chomp
end
=end
dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']
p anagrams_for('acres',dictionary)
p anagrams_for('ACRES',dictionary)
p anagrams_for('Cesar',dictionary)
p anagrams_for('sacre',dictionary)
p anagrams_for('etlsm',dictionary)
p anagrams_for('unicorn',dictionary)
