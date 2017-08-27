require 'rspec'
require_relative 'nested_arrays'
describe "nested_arrays.rb" do
  describe "chessboard" do
    it "contains pieces using the correct naming convention(e.g. \"W Pawn\")" do
      chess_regex = /[W|B][ ](Pawn|King|Queen|Rook|Knight|Bishop)/
      expect(chessboard[rand(0..1)][rand(0..1)]).to match chess_regex
      expect(chessboard[rand(6..7)][rand(6..7)]).to match chess_regex
    end

    it "is a nested array containing rows of chess pieces" do
      expect(chessboard.length).to eq 8
      expect(chessboard[rand(0..7)].length).to eq 8
    end

    it "contains correct chess pieces at correct columsn" do
      expect(chessboard[0][0]).to match /[W|B][ ]Rook/
      expect(chessboard[0][1]).to match /[W|B][ ]Knight/
      expect(chessboard[0][2]).to match /[W|B][ ]Bishop/
      expect(chessboard[0][3]).to match /[W|B][ ]Queen/
      expect(chessboard[0][4]).to match /[W|B][ ]King/
      expect(chessboard[0][5]).to match /[W|B][ ]Bishop/
      expect(chessboard[0][6]).to match /[W|B][ ]Knight/
      expect(chessboard[0][7]).to match /[W|B][ ]Rook/

      expect(chessboard[1][0]).to match /[W|B][ ]Pawn/
      expect(chessboard[1][1]).to match /[W|B][ ]Pawn/
      expect(chessboard[1][2]).to match /[W|B][ ]Pawn/
      expect(chessboard[1][3]).to match /[W|B][ ]Pawn/
      expect(chessboard[1][4]).to match /[W|B][ ]Pawn/
      expect(chessboard[1][5]).to match /[W|B][ ]Pawn/
      expect(chessboard[1][6]).to match /[W|B][ ]Pawn/
      expect(chessboard[1][7]).to match /[W|B][ ]Pawn/

      expect(chessboard[7][0]).to match /[W|B][ ]Rook/
      expect(chessboard[7][1]).to match /[W|B][ ]Knight/
      expect(chessboard[7][2]).to match /[W|B][ ]Bishop/
      expect(chessboard[7][3]).to match /[W|B][ ]Queen/
      expect(chessboard[7][4]).to match /[W|B][ ]King/
      expect(chessboard[7][5]).to match /[W|B][ ]Bishop/
      expect(chessboard[7][6]).to match /[W|B][ ]Knight/
      expect(chessboard[7][7]).to match /[W|B][ ]Rook/

      expect(chessboard[6][0]).to match /[W|B][ ]Pawn/
      expect(chessboard[6][1]).to match /[W|B][ ]Pawn/
      expect(chessboard[6][2]).to match /[W|B][ ]Pawn/
      expect(chessboard[6][3]).to match /[W|B][ ]Pawn/
      expect(chessboard[6][4]).to match /[W|B][ ]Pawn/
      expect(chessboard[6][5]).to match /[W|B][ ]Pawn/
      expect(chessboard[6][6]).to match /[W|B][ ]Pawn/
      expect(chessboard[6][7]).to match /[W|B][ ]Pawn/
    end
  end

  describe "#table" do
    it "should contain data in correct format" do
      target = [
        ["Number", "Name", "Position", "Points per Game"],
        [12, "Joe Schmo", "Center", [14, 32, 7, 0, 23]],
        [9, "Ms. Buckets", "Point Guard", [19, 0, 11, 22, 0]],
        [31, "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25]],
        [18, "Sally Talls", "Power Forward", [18, 29, 26, 31, 19]],
        [22, "MK DiBoux", "Small Forward", [11, 0, 23, 17, 0]]
      ]
      expect(table).to eq target
    end
  end
end
