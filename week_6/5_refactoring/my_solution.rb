# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].

#Eliminate repetition by using looping and branching wisely
#Complex operations are decomposed into constituent parts
#Descriptive names for methods, variables, classes, and modules
#Methods are small and behavior is obvious
#Minimizes need for comments because the code tells you what it is doing
#Code is formatted with proper indentation for optimal readability

# Original Solution

class CreditCard


# pass parameter to initialize, get rid of all whitespace, make sure it's 16 characters long
  def initialize(card_number)   
    @card_number = card_number.to_s.gsub(/\s+/, "") 
    raise ArgumentError.new("It's not 16!") if @card_number.length != 16
  end

# check_card method calls a bunch of helper methods. The credit card number is manipulated to see if it's real.  
  def check_card()
    card_array = convert_to_int_array(@card_number)
    double_array = doubler(card_array)
    card_string = convert_to_string(double_array)
    final_number = convert_to_num(card_string)
    sum = adder(final_number)
    #puts divisible(sum)
    return divisible(sum)
  
  end
  
# string of numbers is going to become array of int numbers so we can do math on them
  def convert_to_int_array(value)
    card_array = []
    len = value.length
    for i in 0..(len-1)
      card_array[i] = value[i].to_i
    end 
    # puts "."
    #puts card_array
    return card_array
  end
  
# every other number in the int array is doubled
  def doubler(value)
    for i in 0..15
      if (i % 2 == 0)
        value[i] =  value[i].to_i * 2

      end
    end
    #puts "."
    #puts value
    value
  end

# turn every digit in array into a character  
  def convert_to_string(card_array)
    card_string = ""
    for i in 0..15
      card_string += card_array[i].to_s
    end 
    #puts"."
    #puts card_string
    return card_string
  end
  
# convert characters back to digits 
  def convert_to_num(card_string)
    len = card_string.length 
    card_int = []
    for i in 0..len
      card_int.push(card_string[i].to_i)
    end 
    #puts "."
    #puts card_int
    return card_int
  end

# add the numbers up  
  def adder(final_number)
    sum = 0
    final_number.each {|x| sum += x}
    #puts "."
    #puts sum
    return sum
  end 

# see if final number we are left with is divisible by 10  
  def divisible(sum)
    if sum % 10 == 0
      return true
    else 
      return false
    end
  end

end




# 1. DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(1234567890123456)
puts card.check_card() == false

cardTwo = CreditCard.new ("4563 9601 2200 1999")
puts cardTwo.check_card() == true



# Refactored Solution
class CreditCard

  def initialize(card_number)   
    @card_number = card_number.to_s.gsub(/\s+/, "") 
    raise ArgumentError.new("It's not 16!") if @card_number.length != 16
  end
  
  def check_card()
    card_array = convert_to_int_array(@card_number)
    double_array = doubler(card_array)
    card_string = convert_to_string(double_array)
    final_number = convert_to_num(card_string)
    sum = adder(final_number)    
    return divisible(sum)  
  end
  
  def convert_to_int_array(value)
    card_array = Array.new
    for i in 0...value.length
      card_array[i] = value[i].to_i
    end 
    card_array
  end
  
  def doubler(value)
    for i in 0...16
      if (i % 2 == 0)
        value[i] =  value[i].to_i * 2
      end
    end
    value
  end
  
  def convert_to_string(card_array)
      card_string = String.new
    for i in 0...16
      card_string += card_array[i].to_s
    end 
    card_string
  end
  
  def convert_to_num(card_string)
    len = card_string.length 
    card_int = Array.new
    for i in 0..len
      card_int.push(card_string[i].to_i)
    end 
    card_int
  end
  
  def adder(final_number)
    sum = 0
    final_number.each {|x| sum += x}
    sum
  end 
  
  def divisible(sum)
    if sum % 10 == 0
      true
    else 
      false
    end
  end
end





# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

card = CreditCard.new(1234567890123456)
assert {card.check_card() == false}

cardTwo = CreditCard.new ("4563 9601 2200 1999")
assert {cardTwo.check_card() == true}


# Reflection 

# What parts of your strategy worked? What problems did you face?

# I thought this code was more refactorable than it really was. While I certainly could have made it shorter, that would have compromised the 
# excellent job of keeping methods simple that my co-author of the original work, Amelia, had implemented. I changed some of the empty arrays and strings we created
# from object literal notation to constructing class types.  I also experimented with not passing each method a parameter and setting each useful value to an instance variable.
# this did not decrease runtime. 

# What questions did you have while coding? What resources did you find to help you answer them?

# Reviewing luhn's algorithm. Quick look-up on wikipedia.

# What concepts are you having trouble with, or did you just figure something out? If so, what?

# How to refactor something that doesn't need to much refactoring. Our code was quite long so I figured I could refactor it. It took me a while to realize I shouldn't.
# Though few changes were made, quite a bit of time was spent on this, just relearning the logic of the code and then re-writing all of it, then discovering my re-write wasn't faster 

# Did you learn any new skills or tricks?

# No, it was refactoring, using known tricks

# How confident are you with each of the learning objectives?

# I learned sometimes you think you can refactor something and it takes a while to realize you can't much

# Which parts of the challenge did you enjoy?

# Solidifying knowledge of a past assignment

# Which parts of the challenge did you find tedious?

# Struggling to improve something