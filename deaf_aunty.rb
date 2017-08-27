###########################################################
# Method 1
###########################################################
def silent_exit(input)
  print "Sandra: "
  input = gets
  if input =="\n"
    #exit!
    return false
  else
    deaf_aunty(input)
  end
end

def deaf_aunty(input)
  leaving = "I love ya, aunty, but I've got to go.\n"
  while input != leaving
    if input == "\n"
      silent_exit(input)
      return
    elsif
      input == input.upcase
      puts "Aunty : NO, WE CANNOT DO THAT!"
      print "Sandra: "
      input = gets
    else
      puts "Aunty : HUH?! SPEAK UP, SANDRA!"
      print "Sandra: "
      input = gets
    end
  end
  puts "Aunty : Ok then, goodbye Sandra, I LOVE YA TOO!"
end
#Start here!
puts "(Hi Sandra, say something to your aunty.)"
print "Sandra: "
sandra = gets
deaf_aunty(sandra)

##################################################################
#Method 2
##################################################################
=begin
def deaf_aunty(input)
  leaving = "I love ya, aunty, but I've got to go.\n"
  count = 1
  while input != leaving && count < 2
    if input == "\n"
      count +=1
      print "Sandra: "
      input = gets
    elsif input == input.upcase
      puts "Aunty : NO, WE CANNOT DO THAT!"
      print "Sandra: "
      input = gets
    else
      puts "Aunty : HUH?! SPEAK UP, SANDRA!"
      print "Sandra: "
      input = gets
    end
  end
  puts "Aunty : Ok then, goodbye Sandra, I LOVE YA TOO!"
end

#Start here!
puts "(Hi Sandra, say something to your aunty.)"
print "Sandra: "
sandra = gets
deaf_aunty(sandra)
=end

# Save this file so you can run it
# via the command line (Terminal) like so:
#   $ ruby deaf_aunty.rb
#
# Note: The '$' is not part of the command.
# It is to indicate that the text after it is a terminal command.

# Your method should wait for user input, which corresponds
# to you saying something to your Aunty.

# You'll probably want to write other methods, but this
# encapsulates the core Aunty logic

# Run our method
# Remember to comment this before submitting your challenge
