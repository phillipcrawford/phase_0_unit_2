# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [with: Jeff Kynaston].


# 2. Pseudocode
# Jeff was kind enough to help me with this challenge even though he had already done it. So we were working with
# my code from boggleboard. It needed an initialize method that took a the board as a parameter. That parameter is set to an instance variable. Then all places in the code
# that were originally called 'board' are renamed to that instance variable, except for places where 'board' was a parameter, there it is deleted. That's about it as this code
# is already very dry at 1 line of code per method.

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

# same as initial

# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
puts "Your boggle board #{boggle_board.instance_variable_get(:@boggle_board)}" #:looking for symbol
puts "Your word is #{boggle_board.create_word([1,2], [1,1], [2,1], [3,2])}"
puts "Your row is #{boggle_board.get_row(1)}"
puts "Your column is #{boggle_board.get_col(2)}"
def assert
	raise "Assertion Failed!" unless yield
end

assert { boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock" } # returns "dock"
assert { boggle_board.create_word([0,1], [1,1], [2,2], [3,3]) == "role" } # returns "role"
assert { boggle_board.get_row(3) == ["t", "a", "k", "e"]}
assert { boggle_board.get_col(1) == ["r", "o", "c", "a"]}

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?

#   This challenge went quickly, since it was my code I navigated. Much of that time was spent on a bug, and we finished 
#quickly.

# What questions did you have while coding? What resources did you find to help you answer them?

#   realizing that get_row and get_col were still passing an array when they didn't need to.

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#   no, I get the concepts of making a ruby class and traversing nested data structures

# Did you learn any new skills or tricks?

#   practiced assert statements

# How confident are you with each of the learning objectives?

#   very, I know about classes from other programming

# Which parts of the challenge did you enjoy?

#   the coding, and the debugging, it was like a puzzle. Jeff was a good partner as well.

# Which parts of the challenge did you find tedious?

#   none of it