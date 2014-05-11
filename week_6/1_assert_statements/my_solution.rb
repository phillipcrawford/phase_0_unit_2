# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#   There is a method called assert. It isn't called yet. First line of code executed is
# name is set to string "bettysue". The following line is a block named assert with a boolean
# expression inside testing to see if name equals string bettysue. The block calls the method
# assert, which will end program with message "Assertion failed" unless the boolean in the
# block is true. The boolean is true, so we do not end program and are done with method. The 
# next assert block contains a boolean which is false. When the method is called the yield 
# will lead to a false value. So the assertion is raise in this case


# 3. Copy your selected challenge here
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


# DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

puts game.solved?   # => false

puts game.guess(5)  # => :low
puts game.guess(20) # => :high
puts game.solved?   # => false

puts game.guess(10) # => :correct
puts game.solved?   # => true



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed!" unless yield
end

game = GuessingGame.new(10)
assert {!game.solved?}
assert {game.guess(5) == :low}
assert {game.guess(20) == :high}
assert {!game.solved?}
assert {game.guess(10) == :correct}
assert {game.solved?}


# 5. Reflection

#What parts of your strategy worked? What problems did you face?

#  I did a reading of the instructions before I dove right in and tried to figure out how the code worked. I couldn't at first so 
#I re-read the instructions and followed the link that explains yeild. From this I learned enought to solve the rest of the challenge

#What questions did you have while coding? What resources did you find to help you answer them?

#  I found the link that explains yeild to be very useful. It explains yeild and blocks as concisely as possible
#http://www.tutorialspoint.com/ruby/ruby_blocks.htm

#What concepts are you having trouble with, or did you just figure something out? If so, what?

#  No overarching concepts, no.

#Did you learn any new skills or tricks?

#  The relationship between yeilds, blocks, and the method the yeild is in.

#How confident are you with each of the learning objectives?

#  Very

#Which parts of the challenge did you enjoy?

#  The resources were very good

#Which parts of the challenge did you find tedious?

#  none of it.