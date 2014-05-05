# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Andy Principe






# Our Refactored Solution


# The owner wants to have options to include a mix of all items, rather than favorite foods.
# The owner wants to add the following items to the menu: pudding (feeds two people), bunt cake 
# (feeds 4 people), and mega-cupcakes (feeds 3 people)

def bakery_num(num_of_people, fav_food) #defining method bakery_num, which takes 2 arguments
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1, "pudding" => 2, "bunt cake" => 4, "mega-cupcakes" => 3}  #creates hash my_list, key is food, value is number
  pie_qty = cake_qty = cookie_qty = has_fave = 0 
 

  my_list.each_key do |k| #iterating through array my_list
  if k == fav_food #tests if each item in array my_list = fav_food
  has_fave = 1 #if test above passes, set has_fave to true
  # fav_food = k #if test above passes, set fav_food to k
  end
  end
  
  if has_fave == 0 #if fav_food is not a key, end program
  raise ArgumentError.new("You can't make that food")
  else #if fav_food is a key
  fav_food_qty = my_list.values_at(fav_food)[0] #set fav_food_qty equal to the value of fav_food
  if num_of_people % fav_food_qty == 0 
    num_of_food = num_of_people / fav_food_qty #if num_of_people is evenly divisible by fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
    
    #num_of_food = num_of_people / fav_food_qty #then perform division by integer
    #return "You need to make #{num_of_food} #{fav_food}(s)." #return "You need to make (num_of_food) (fav_food)s"
  else num_of_people % fav_food_qty != 0 #redundant else
    while num_of_people > 0 #while num_of_people is greater than 0
    if num_of_people / my_list["pie"] > 0 #if num_of_people divided by value of pie is greater than 0
    pie_qty = num_of_people / my_list["pie"] #set pie_qty equal to num_of_people divided by value of pie in hash
    num_of_people = num_of_people % my_list["pie"] #set num_of_people equal to the remainder of num_of_people divided by value of pie in hash
    elsif num_of_people / my_list["cake"] > 0 #if num_of_people divided by hash value of cake is greater than 0
    cake_qty = num_of_people / my_list["cake"] #set cake_qty equal to num_of_people divided by hash value of cake
    num_of_people = num_of_people % my_list["cake"] #set num_of_people equal to the remainder of num_of_people divided by value of cake in hash
    else
    cookie_qty = num_of_people #set cookie_qty equal to num_of_people
    num_of_people = 0 #set num_of_people equal to 0
    end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." #print out
    end
  end
  
end






#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 
# What parts of your strategy worked? What problems did you face?

#   Me and Andy did a thorough job of psuedocoding. We weren't able to meet up and finish the rest, so not much has been refactored.

# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Did you learn any new skills or tricks?

#   Mostly honed existing ones

# How confident are you with each of the learning objectives?

#   Rather confident. We were beginning the refactoring process

# Which parts of the challenge did you enjoy?
# Which parts of the challenge did you find tedious?


