class BoggleBoard
  def initialize
    @board = Array.new(4){Array.new(4)}
    @dices = [["A","A","E","E","G","N"],["E","L","R","T","T","Y"],["A","O","O","T","T","W"],["A","B","B","J","O","O"],["E","H","R","T","V","W"],["C","I","M","O","T","U"],["D","I","S","T","T","Y"],["E","I","O","S","S","T"],["D","E","L","R","V","Y"],["A","C","H","O","P","S"],["H","I","M","N","Q","U"],["E","E","I","N","S","U"],["E","E","G","H","N","W"],["A","F","F","K","P","S"],["H","L","N","N","R","Z"],["D","E","I","L","R","X"]]
    # @dices = Array.new(16){Array.new(6){|char| ("A".."Z").to_a.sample}}
    # @board = [["D","E","H","N"],["V","V","E","O"],["O","I","R","A"],["N","T","A","R"]]
  end

  def shake!
    @board.each { |row|
      for i in 0..3
        dice = @dices.length
        row[i] = @dices[rand(dice)][rand(5)]
        @dices.delete_at(dice)
    end }
  end

  def to_s
    @board.each { |row| row.each { |char|
        char = "Qu" if char == "Q"
      print "#{char}".ljust(3) }
    puts }
  end

  def include?(input)
    @input = input.upcase.split(//) ; concat_board = [] ; indices = []
    if input.upcase.include? "QU"
      @input.delete_at((input.upcase.index("QU"))+1)  #REPLACE INPUT 'QU' WITH 'Q'
    end
    @board.each { |array| concat_board.concat(array) }  #CONVERT BOARD TO SINGLE ARR
    for n in 0..@input.length-1  #INDICES OF EACH CHARACTER
      indices << (0..15).select {|i| concat_board[i]==@input[n]}
    end
    head, *tail = indices
    combination = head.product(*tail)  #GET ALL THE POSSIBLE COMBINATION FROM INDICES
    connect = 0
    #MAKE SURE NO REPETITION (CROSS ITSELF)
    combination.each { |arr| arr.uniq.length == arr.length ?  arr : arr.replace(["-"]) }
    combination.each do |arr|  #CHECK ON EACH COMBINATION WHETHER CONNECTED OR NOT
      count = 0 ;
      for i in 1..arr.length-1
        diff = arr[i] - arr[i-1]
        case arr[i-1]
        when 0
          a = diff == 1 || (4..5) === diff
        when 1 , 2
          a = diff.abs == 1 || (3..5) === diff
        when 3
          a = diff == -1 || (3..4) === diff
        when 4 , 8
          a = diff == 1 || (4..5) === diff || (-4..-3) === diff
        when 7 , 11
          a = diff == -1 || (-5..-4) === diff || (3..4) === diff
        when 12
          a = diff == 1 || (-4..-3) === diff
        when 13, 14
          a = diff.abs == 1 || (-5..-3) === diff
        when 15
          a = diff == -1 || (-5..-4) === diff
        else
          a = diff.abs == 1 || (3..5) === diff.abs
        end
        if a  #COUNT + 1 IF THE (N) AND (N-1) ARE CONNECTED
          count += 1
        end
      end
      connect += 1 if count == @input.length-1
    end  #ALL CHARACTERS ARE CONNECTED IF COUNT EQUAL TO WORD'S LENGTH-1
    if connect > 0
      return true
    else
      return false
    end
  end

end

board = BoggleBoard.new
puts board
board.shake!
puts board
input = gets.chomp
p board.include?(input)
