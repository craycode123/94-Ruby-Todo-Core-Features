require 'byebug'
class Sudoku
  def initialize(board_string)
    @board = Array.new{Array.new}

    i = 0
    board_string.split("").each_slice(9) do |row|
      i += 1
      @board << row.map {|x| x.to_i}
      new_row = row.map {|x| x=="0" ? "_" : x}
      # puts new_row.join(" ")
      # puts row.join.each_slice(3)
      print "|"
      new_row.each_slice(3) do |three|
        print " #{three.join(" ")} |"
      end ; puts
      puts "|-------"*3 + "|" if ( i == 3 || i == 6)
    end ; puts
  end

  def solve!
    count = 10
    while count != 0
      possible_row = [] ;  possible_col = [] ;  empty_coord = [] ; poss_for_cell = []

      @board.each_with_index do |row, y_coord|
        row.each_with_index do |cell, x_coord|
          coord = []
          coord << y_coord << x_coord if cell == 0
          empty_coord << coord if coord != []
        end
      end
      # p empty_coord ; puts
      # byebug
      @board.each do |row|
        possible = (1..9).to_a
        row.each do |cell|
          possible.delete(cell)
        end
        possible_row << possible
      end
      # p possible_row ; puts

      @board.transpose.reverse.each do |col|
        possible = (1..9).to_a
        col.each do |cell|
          possible.delete(cell)
        end
        possible_col.unshift(possible)
      end
      # p possible_col ; puts

      empty_coord.each do |coord|
        poss_for_cell << (possible_row[coord[0]]&possible_col[coord[1]])
      end
      # p poss_for_cell

      poss_for_cell.each_with_index do |poss, index|
        if poss.length == 1
          a = empty_coord[index]
          @board[a[0]][a[1]] = poss[0]
          empty_coord.delete_at(index)
          poss_for_cell.delete_at(index)
        end
      end
      # p empty_coord
      # p poss_for_cell

      count = 0
      @board.each do |row|
        count += row.count(0)
      end
    end
  end

  # Returns a string representing the current state of the board
  # Don't spend too much time on this method; flag someone from staff
  # if you are.
  def board
    i = 0
    @board.each do |row|
      print "| "
      row.each do |num|
        i += 1
        num = "_" if num == 0
        print "#{num}".ljust(2)
        print "| " if i%3 == 0
      end ; puts
      puts "|-------"*3 + "|" if ( i == 27 || i == 54)
    end
  end
end

# The file has newlines at the end of each line, so we call
# String#chomp to remove them.
# board_string = File.readlines('sample.unsolved.txt').first.chomp
board_string = "619030040270061008000047621486302079000014580031009060005720806320106057160400030"

game = Sudoku.new(board_string)

# Remember: this will just fill out all the "logically necessary" cells and not "guess"
game.solve!

# prints the board with nice formatting to the user
game.board
