# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin
Looking at user stories I know I'm going to need 5 methods. 1 initializes a pezdespenser taking in an array of strings representing pez flavors as a parameter.
1 that returns the number of pez remaining, 1 that gets (returns and removes) a pez flavor from front of array, 1 that adds a pez flavor to back of array, and 1 that prints out the 
entire array. We will save array passed in during initialization as an instance variable, and use it for remainder of methods	
=end


# 3. Initial Solution

class PezDispenser
 
# your code here!
  def initialize(flavors)
    @flavors = flavors
  end
  
  def pez_count
    @flavors.length
  end
  
  def get_pez
  	temp = @flavors[0]	
    @flavors = @flavors.delete_at(0)
    return temp
  end
  
  def add_pez(addedFlavor)
    @flavors.push(addedFlavor)
  end

  def see_all_pez
    @flavors.to_s
  end
 
end

# 4. Refactored Solution
class PezDispenser
  def initialize(flavors)
    @flavors = flavors
  end
  
  def pez_count
    @flavors.length
  end
  
  def get_pez
    temp = @flavors[0]	
    @flavors.delete_at(0)  
    return temp
  end

  def add_pez(addedFlavor)
    @flavors.push(addedFlavor)
  end

  def see_all_pez
    @flavors.join(" ").to_s
  end
 
end


# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
  raise "Assertion failed!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
assert {super_mario.pez_count == 9}
super_mario.add_pez("purple")
assert {super_mario.pez_count ==10}
super_mario.get_pez
assert {super_mario.pez_count == 9}


# 5. Reflection 
# What parts of your strategy worked? What problems did you face?

#   By looking at the driver code I was able to see what the methods specified in the user stories need to be called.
# Through trial and error I kept building more functions. If the error messages started happening at deeper lines in the code
# I knew I had done the function correctly and could move on. I had problems with my delete function, I was returning the length
# the word to be deleted, took me a while to figure that out, but I noticed it was always 4,5,6,9, or 10 which is the length of the 
# flavors.

# What questions did you have while coding? What resources did you find to help you answer them?

#   Which methods to use on the flavors string array I found them in the ruby docs.
#http://www.ruby-doc.org/core-2.1.1/Array.html

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#   no ruby concepts.

# Did you learn any new skills or tricks?

#   I learned about %w() being another way of formatting arrays 

# How confident are you with each of the learning objectives?

#  I am comfortable with instance variables, assert statements and translating user experiences

# Which parts of the challenge did you enjoy?

#   figuring out a pez dispenser is a que and that getting and adding pez would be different pez.

# Which parts of the challenge did you find tedious?

#   thinking up assert statements, as I solved it using trial and error, and really only wrote them in at the end.