# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Amelia Downs].

# Input: credit card number
# Output: boolian depending if it is a valid number or not
# Steps: 
# Get rid of spaces between numbers
# check length
# turn number into an array 
# all even elements in the array are doubled
# turn array into string
# turn each character into number
# sum number % 10 should equal 0 (true)

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
#   def initialize(card_number)
   
#     @card_number = card_number.to_s.gsub(/\s+/, "") 
#     raise ArgumentError.new("It's not 16!") if @card_number.length != 16
#     @card_array = Array.new( 16, nil)
#     @card_int = []
#     doubler()
#     convert()
#     convert_to_num()
#     adder()
#     divisible()
#   end
  
#   def doubler()
#     #@card_number.to_a
#     #puts @card_number
#     for i in 0..15
#       @card_array[i] = @card_number[i].to_i
#     end 

#     for i in 0..15
#       if (i % 2 == 0)
#         @card_array[i] =  @card_array[i] * 2

#       end
#     end
#     puts @card_array
#   end
  
#   def convert()
#       @card_string = ""
#     for i in 0..15
#       @card_string += @card_array[i].to_s
#     end 
#   end
  
#   def convert_to_num()
#     len = @card_string.length 
#     for i in 0..len
#       @card_int.push(@card_string[i].to_i)
#     end 
#   end
  
#   def adder()
#     puts @card_int
#     @sum = 0
#     @card_int.each {|x| @sum += x}
#     puts @sum
#   end 
  
#   def divisible()

#     if @sum % 10 == 0
#       return true
#     else 
#       return false
#     end
#   end

# end
# 4. Refactored Solution

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
    #puts divisible(sum)
    return divisible(sum)
  
  end
  
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
  
  def convert_to_string(card_array)
      card_string = ""
    for i in 0..15
      card_string += card_array[i].to_s
    end 
    #puts"."
    #puts card_string
    return card_string
  end
  
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
  
  def adder(final_number)
    sum = 0
    final_number.each {|x| sum += x}
    #puts "."
    #puts sum
    return sum
  end 
  
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

# 5. Reflection 
=begin What parts of your strategy worked? What problems did you face?
  Amelia and I worked on this problem. I thought the biggest problem we faced was figuring out a way to code something 
  while keeping it DRY. 
What questions did you have while coding? What resources did you find to help you answer them?
  Was there a way to keep the creditcard number in on array the whole time without changing it's 
  type? No, nor should there be because that would decrease the versatility of ruby
What concepts are you having trouble with, or did you just figure something out? If so, what?  
Did you learn any new skills or tricks?
  I liked Amelia's suggestion of testing by inserting all sorts of puts statements
How confident are you with each of the learning objectives?
  Quite confident. 
Which parts of the challenge did you enjoy?
  getting it right eventually
Which parts of the challenge did you find tedious?
  finding the best refactor
=end