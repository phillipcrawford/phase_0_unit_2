# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [with: Jeff Kynaston].


# 2. Pseudocode


# 3. Initial Solution
class BoggleBoard
  
  def initialize(board)
    @boggle_board = board
  end
  
  def create_word(*coords)
    coords.map { |coord| @boggle_board[coord.first][coord.last]}.join("")
  end 
    #your code here
  def get_row(row)
   create_word([row,0], [row,1], [row,2], [row,3]).split("")
  end
  
  def get_col(column)
    create_word([0,column], [1,column], [2,column], [3,column]).split("")
  end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
# puts "Your diagonal is #{boggle_board.get_diagonal(3,3)}"
# 4. Refactored Solution
puts "Your boggle board #{boggle_board.instance_variable_get(:@boggle_board)}" #:looking for symbol
puts "Your word is #{boggle_board.create_word([1,2], [1,1], [2,1], [3,2])}"
puts "Your row is #{boggle_board.get_row(1)}"
puts "Your column is #{boggle_board.get_col(2)}"





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

def assert
	raise "Assertion Failed!" unless yield
end

assert { boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock" } # returns "dock"
assert { boggle_board.create_word([0,1], [1,1], [2,2], [3,3]) == "role" } # returns "role"
assert { boggle_board.get_row(3) == ["t", "a", "k", "e"]}
assert { boggle_board.get_col(1) == ["r", "o", "c", "a"]}

# 5. Reflection 