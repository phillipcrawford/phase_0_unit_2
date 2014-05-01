# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

=begin Input: input is hardcoded in driver code.
 
 Output: results of hardcoded calls.
 
 Steps:after instantiation of objects of class GuessingGame, methods initialize, guess and 
 solved are called. Initialize is passed a number that is the answer to the game. Guess is 
 passed a number and returns whether the number is above, below, or the same as the number passed during
 initialize. Solved returns whether we correctly answered the question. 
=end


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@solved = false
    # Your initialization code goes here
  end
  def guess(guess)  	
  	if guess > @answer
  	    @solved = false
  	    :high
  	elsif guess < @answer
  		@solved = false
  		:low
  	else
  		@solved = true
  		:correct
  	end
  end
  def solved?
    @solved
  end

  # Make sure you define the other required methods, too
end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    end
  def guess(guess)    
    if guess > @answer
        @solved = false
        :high
    elsif guess < @answer
      @solved = false
      :low
    else
      @solved = true
      :correct
    end
  end
  def solved?
    @solved
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

puts game.solved?   # => false

puts game.guess(5)  # => :low
puts game.guess(20) # => :high
puts game.solved?   # => false

puts game.guess(10) # => :correct
puts game.solved?   # => true




# 5. Reflection 

# What parts of your strategy worked? What problems did you face?

# I choose to solve the problem where the answer and guess's are hardcoded. I didn't face many 
# problems. I dove right into this one before writing psuedo-code spend most of my time 

# What questions did you have while coding? What resources did you find to help you answer them?

# I used trial and error with this challenge. When something didn't pass, I checked the spec. One issue
# was setting @solved to false if a guess was made after correct answer was found

# What concepts are you having trouble with, or did you just figure something out? If so, what?

# still looking into how :message is different from "message"

# Did you learn any new skills or tricks?

# no

# How confident are you with each of the learning objectives?

#   Very

# Which parts of the challenge did you enjoy?

#   Solving it via trial and error

# Which parts of the challenge did you find tedious?

#   writing this reflection and the psuedocode.