# Start coding here.
# Fill in the methods below with your solution.
# Do not change the method names

# Iteration 1: Converting one word to Pig Latin
def convert_word_to_pig_latin(word)
  #check if the word start with vowel or no vowels at all
  if word.start_with?("a","e","i","o","u") #|| word.index(/[aeiou]/) == nil
    word
  else
    word = word.gsub(/([^aeiou+])([aeiou])(\w+)/, '\2\3\1ay')
    #first_vowel_index = word.index(/[aeiou]/)
    #temp = word[0..(first_vowel_index-1)]
    #word = word[first_vowel_index..-1] << temp << "ay"
  end
  word
end

# Iteration 2: Converting sentences to Pig Latin
def convert_sentence_to_pig_latin(sentence)
  # array = sentence.split
  new_sentence = []
  sentence.each do |word|
    new_sentence << convert_word_to_pig_latin(word)
  end
  puts new_sentence.join(" ")
end

#sentence = "His favourite fruits is apple"
#convert_sentence_to_pig_latin(sentence)


convert_sentence_to_pig_latin(ARGV)
