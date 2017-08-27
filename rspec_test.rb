require 'rspec'
require_relative 'nested_arrays'
describe "nested_arrays.rb" do
  describe "#generate_realistic_tic_tac_toe" do
    it "has the right ratio of 'x' and 'o' (both lowercase letters)" do
      result = generate_realistic_tic_tac_toe.flatten.map(&:downcase)
      expect(result.length).to eq(9)
      expect(result.count('x')).to be >=(4)
      expect(result.count('o')).to be >=(4)
    end
  end

  describe "#convert_roster_format" do
    it "converts the nested array into an array of hashes" do
      roster =
      [
        ["Number", "Name", "Position", "Points per Game"],
        [12, "Joe Schmo", "Center", [14, 32, 7, 0, 23]],
        [9, "Ms. Buckets", "Point Guard", [19, 0, 11, 22, 0]],
        [31, "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25]],
        [7, "Sally Talls", "Power Forward", [18, 29, 26, 31, 19]],
        [22, "MK DiBoux", "Small Forward", [11, 0, 23, 17, 0]]
      ]

      convert_roster_format(roster)[0]["Number"] = 12
      convert_roster_format(roster)[0]["Name"] = "Joe Schmo"
      convert_roster_format(roster)[0]["Position"] = "Center"
      convert_roster_format(roster)[0]["Points per Game"] = [14, 32, 7, 0, 23]

      convert_roster_format(roster)[1]["Number"] = 9
      convert_roster_format(roster)[1]["Name"] = "Ms. Buckets"
      convert_roster_format(roster)[1]["Position"] = "Point Guard"
      convert_roster_format(roster)[1]["Points per Game"] = [19, 0, 11, 22, 0]

      convert_roster_format(roster)[2]["Number"] = 31
      convert_roster_format(roster)[2]["Name"] = "Harvey Kay"
      convert_roster_format(roster)[2]["Position"] = "Shooting Guard"
      convert_roster_format(roster)[2]["Points per Game"] = [0, 30, 16, 0, 25]

      convert_roster_format(roster)[3]["Number"] = 7
      convert_roster_format(roster)[3]["Name"] = "Sally Talls"
      convert_roster_format(roster)[3]["Position"] = "Power Forward",
        convert_roster_format(roster)[3]["Points per Game"] = [18, 29, 26, 31, 19]

      convert_roster_format(roster)[4]["Number"] = 22
      convert_roster_format(roster)[4]["Name"] = "MK DiBoux"
      convert_roster_format(roster)[4]["Position"] = "Small Forward"
      convert_roster_format(roster)[4]["Points per Game"] = [11, 0, 23, 17, 0]
    end
  end
end
