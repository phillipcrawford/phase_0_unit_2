# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [with Andrew Koines jr].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Looks good to begin with. We are mapping through coords that were passed in and returning their
# values concatenated together. Then we refactored to make @boggle_board a instance variable.

# Initial Solution
  def create_word(board, *coords)   
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# Refactored Solution
  def create_word(board, *coords)
    @boggle_board = board
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# DRIVER TESTS GO BELOW THIS LINE
  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word? rad

# Reflection 
# We thought step was was done because it passed the tests at first. It was only after part 3 got hard that we 
# refactored part 1 to solve the problem.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution

def get_row(row,board)
  return board[row]  
end

# Refactored Solution

def get_row(row)
 create_word(@boggle_board, [row,0], [row,1], [row,2], [row,3]).split("")
end

# DRIVER TESTS GO BELOW THIS LINE
get_row(1) #=>  ["i", "o", "d", "t"]

# Reflection 
# we solved this when we redefined get_row to take two parameters, it worked, but solving part 3 this way is far 
# more difficult.
# after setting @boggle_board to a instance variable this went quickly. 


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

#input: column, board
#output: all thoses values in column in one array
#steps: 

=begin
DEF get_col function that takes arguments column and board
 DEF a new array answer
 FOR each element in board
   push element at index column onto answer
 END
END

#boggle_board[0][0]==>b

=end

# Initial Solution
def get_col(column)
  create_word(@boggle_board, [0,column], [1,column], [2,column], [3,column]).split("")
end

# Refactored Solution
def get_col(column)
  create_word(@boggle_board, [0,column], [1,column], [2,column], [3,column]).split("")
end

# DRIVER TESTS GO BELOW THIS LINE

puts get_col(1) == ["r", "o", "c", "a"]
puts get_row(1) == ["i", "o", "d", "t"]

# Reflection 
# at this point we got stumped with our initial solution. So we refactored part 1. After setting 
# @boggle_board to a instance variable this went quickly. 