class BoggleBoard
  def initialize
    @board = Array.new(4){Array.new(4)}
    @dices = [["A","A","E","E","G","N"],["E","L","R","T","T","Y"],["A","O","O","T","T","W"],["A","B","B","J","O","O"],["E","H","R","T","V","W"],["C","I","M","O","T","U"],["D","I","S","T","T","Y"],["E","I","O","S","S","T"],["D","E","L","R","V","Y"],["A","C","H","O","P","S"],["H","I","M","N","Q","U"],["E","E","I","N","S","U"],["E","E","G","H","N","W"],["A","F","F","K","P","S"],["H","L","N","N","R","Z"],["D","E","I","L","R","X"]]
    # arr = ("A".."Z").to_a
    # @dices = Array.new(16){Array.new(6){|char| arr.sample}}
  end

  def shake!
    #arr = ("A".."Z").to_a
    #@board = Array.new(4){Array.new(4){ |char| arr[rand(25)] } }
    @board.each do |row|
      for i in 0..3
        dice = @dices.length
        row[i] = @dices[rand(dice)][rand(5)]
        @dices.delete_at(dice)
      end
    end
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  #
  # Override this to print out a sensible board format so
  # you can write code like:
  #
  # board = BoggleBoard.new
  # board.shake!
  # puts board
  def to_s
    @board.each do |row|
      row.each do |char|
        char = "Qu" if char == "Q"
        print "#{char}".ljust(3)
      end ; puts
    end
  end
end

board = BoggleBoard.new
puts board
board.shake!
puts board
board.shake!
puts board
