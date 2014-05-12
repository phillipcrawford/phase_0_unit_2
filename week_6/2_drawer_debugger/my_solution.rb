# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
   end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return? => nothing, but it should empty @contents
    @contents = []
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end 

class Silverware
  attr_reader :type

# Are there any more methods needed in this class? => yes clean_silverware

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

  def clean
    @clean
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #returns empty


#added a few lines because drawer is empty by this point.
fork = Silverware.new("fork") 
silverware_drawer.add_item(fork) 
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

assert {fork}
assert {removed_knife}
assert {!fork.clean}

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?

# This was really trial and error. I knew I needed to build a clean_silverware method. Just reading error messages worked for me. I 
# struggled to think up good assert statements

# What questions did you have while coding? What resources did you find to help you answer them?

#   nothing too big. Trial and error solved my issues

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#   I learned that a instance variable can't be accessed in same notation as a method.

# Did you learn any new skills or tricks?

#   practice debugging reading code

# How confident are you with each of the learning objectives?

#   Very, I could figure out what the methods needed to do and read the error messages.

# Which parts of the challenge did you enjoy?

#   I like trial and error

# Which parts of the challenge did you find tedious?

# I didn't understand the logic at the end of the driver code. We had just emptied the drawer, and now we're accessing a fork?
# took me a while to figure out I should add my own fork on a whole new fork.
