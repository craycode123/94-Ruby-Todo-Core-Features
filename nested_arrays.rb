# Objective 1: Chessboard
# p = "White Pawn"; r = "While Rook"; n = "White Knight"; q = "White Queen"; b = "White Bishop"; k = "White King"
# P = "Black Pawn"; R = "Black Rook"; N = "Black Knight"; Q = "Black Queen"; B = "Black Bishop"; K = "Black King"
chessboard = Array.new(8){Array.new}
chessboard[0] = ["R","N","B","Q","K","B","N","R"]
chessboard[1] = Array.new(8,"P")
for i in 2..5 do
    chessboard[i] = Array.new(8," ")
  end
  chessboard[6] = chessboard[1].join.downcase.split(//)
  chessboard[7] = chessboard[0].join.downcase.split(//)

  chessboard.each do |row|
    row.each do |chess|
      print "[#{chess}]"
    end ; puts
  end

  # Objective 2: Data table
  roster = Array.new(6){Array.new}

  headers = ["Number","Name","Position","Points per Game"]
  number   = [12,9,31,18,22]
  name     = ["Joe Schmo","Ms. Buckets","Harvey Kay","Sally Talls","MK DiBoux"]
  position = ["Center","Point Guard","Shooting Guard","Power Forward","Small Forward"]
  points   = [[14,32,7,0,23],[19,0,11,22,0],[0,30,16,0,25],[18,29,26,31,19],[11,0,23,17,0]]

  roster[0] << headers[0] << headers[1] << headers[2] << headers[3]

  for i in 0..4 do
      roster[i+1] << number[i] << name[i] << position[i] << points[i]
    end

    # roster.each do |row|
    #   p row
    # end

    roster.each do |row|
      row.each do |data|
        print "| #{data} ".ljust(17)
      end ; puts
    end

    puts roster[1][0] == 12
    puts roster[3][2] == "Shooting Guard"
    puts roster[1][3] == [14,32,7,0,23]
