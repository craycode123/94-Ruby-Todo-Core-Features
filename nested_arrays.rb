# generates a tic tac toe array with the right ratio of 'x' and 'o'
def generate_realistic_tic_tac_toe
  data = []
  while data.length < 10
    board = (1..9).to_a
    shuffle = (1..9).to_a.shuffle
    for i in 0..8
      i%2==0 ? tictac = "O" : tictac = "X"
      input = shuffle[i]
      board[board.index(input)] = tictac
    end
    raise "Error: Invalid number of X\'s or O\'s." if !((board.count("X")==4 && board.count("O")==5) || (board.count("X")==5 && board.count("O")==4))
    data << board
  end; data
end
generate_realistic_tic_tac_toe
=begin
generate_realistic_tic_tac_toe.each do |board|
  for i in 0..2 ;  board[i] = board[i*3..i*3+2] ;  end
  board.replace(board[0..2])
  board.each do |row|
    row.each do |char|
      print "[#{char}]"
    end ; puts
  end ; puts
  #p board
end
=end

# turns the array of players into array of hashes
def convert_roster_format(roster)
  hash_rost = Array.new(5){Array.new}
  hash_rost.each do |row|
    row.replace(roster[hash_rost.index(row)+1])
  end
  for i in 0..4
    for n in 0..3
      hash_rost[i].insert(n*2,roster[0][n])
    end
  end
  for i in 0..4
    hash_rost[i] = Array.new(4){Array.new(2){|element| hash_rost[i].delete_at(0)}}
    hash_rost[i] = Hash[hash_rost[i].map {|key,value| [key,value]}]
  end
  hash_rost
end
roster = [["Number", "Name", "Position", "Points per Game"],
          [12, "Joe Schmo", "Center", [14, 32, 7, 0, 23]],
          [9, "Ms. Buckets", "Point Guard", [19, 0, 11, 22, 0]],
          [31, "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25]],
          [18, "Sally Talls", "Power Forward", [18, 29, 26, 31, 19]],
          [22, "MK DiBoux", "Small Forward", [11, 0, 23, 17, 0]]]
hashed_roster = convert_roster_format(roster)
hashed_roster[2]
puts hashed_roster[0]["Name"] == "Joe Schmo"
convert_roster_format(roster)[1]["Number"] == 9
convert_roster_format(roster)[2]["Name"] == "Harvey Kay"
convert_roster_format(roster)[3]["Position"] == "Power Forward"
convert_roster_format(roster)[4]["Points per Game"] == [11, 0, 23, 17, 0]
