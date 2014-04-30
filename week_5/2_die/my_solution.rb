# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)   	  		
  	@labels = labels  
  	if @labels.length < 1
  	  raise ArgumentError.new("Empty Array")
  	end
  end

  def sides
  	@labels.length
  end

  def roll  	
  	@labels[rand(self.sides)]  	
  end
end



# 4. Refactored Solution
class Die
  def initialize(labels) 
  	@length = labels.length  	  		
  	@labels = labels  
  	if @length < 1
  	  raise ArgumentError.new("Empty Array")
  	end
  end

  def sides
  	@length
  end

  def roll  	
  	@labels[rand(@length)]  	
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides # still returns the number of sides, in this case 6
puts die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly




# 5. Reflection 
# What parts of your strategy worked? What problems did you face?

#   This exercise really built on the previous exercise. I was able to successfully complete a working
# program that passed all rspec requirements on the first try. Making the length of the array
# an instance variable is something I did when refactoring to keep the code DRY. This cut the run time
# of the program from 0.021 seconds to 0.011 seconds on my computer. Didn't face any problems, remembered
# syntax, got to practice raising ArgumentErrors and using instance variables. 

# What questions did you have while coding? What resources did you find to help you answer them?

#   No questions this time, used skill learned from last exercise, remembered them. 

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#  None, this was clear sailing

# Did you learn any new skills or tricks?

#  I saw how program speed can be boosted by using an instance variable rather than using
#arrayName.length every time. 

# How confident are you with each of the learning objectives?

#   Very, it was good to re-inforce concepts I had just learned by using them again. 

# Which parts of the challenge did you enjoy?

#   Refactoring and observing improved runtime on rspec 

# Which parts of the challenge did you find tedious?

#   None