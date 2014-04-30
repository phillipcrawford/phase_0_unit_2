# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: A number, indicating the sides of a dice
# Output: A number indicating a random roll of this dice
# Steps: After looking at starter code, we see 3 methods; initialize, sides, and roll. We want to
# figure out a way to use sides parameter passed in initialize in other methods. Research says this 
# is done using instance variables with the @ symbol. Sides method returns this instance variable. Roll
# method uses rand object to make a number between 0 and sides-1. We add 1 to adjust, and it is returned.
# Initialize also does error checking to make sure sides is not less than 1.
# def


# 3. Initial Solution

class Die
  def initialize(sides)    
    @sides=sides# code goes here    
  end
  
  def sides
  	@sides
    # code goes here
  end
  
  def roll
  	rand(@sides)+1
    # code goes here
  end
end



# 4. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Sides must be greater than 1!")
    end
    @sides=sides   
  end
  
  def sides
    @sides   
  end
  
  def roll
    rand(@sides)+1    
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(8)
puts die.sides
puts die.roll
#die = Die.new(0)
# puts dies.sides

# 5. Reflection 
# What parts of your strategy worked? What problems did you face?

#   I found this exercise straightforward. My solution was perform google searches when confused.

# What questions did you have while coding? What resources did you find to help you answer them?

#   How to use instance variables and how to throw error messages. Found these answers at:
# http://www.techotopia.com/index.php/Ruby_Variable_Scope
# http://apidock.com/ruby/ArgumentError

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#   Concepts I'm getting. The most time consuming part is knowing what to type into google after
# identifiying what I want to change.

# Did you learn any new skills or tricks?

#   instance variables and raising ArgumentError's

# How confident are you with each of the learning objectives?

#   I think I did a good job in being DRY through use of instance variables.

# Which parts of the challenge did you enjoy?

#   The simplicity

# Which parts of the challenge did you find tedious?

#   finding a good argumentError.