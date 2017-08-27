def run
  # write your code here
  puts "What's the current room temperature?"
  room_temperature = gets.chomp.to_i
  until room_temperature >= 20
    puts "Air Conditioner is on. What about now?"
    room_temperature = gets.chomp.to_i
  end
  puts "Air Conditioner is off"
end

# Run the code
run
