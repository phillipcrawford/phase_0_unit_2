# U2.W4: Homework Cheater!


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: A title, topic, date, thesis, and pronoun to be passed in
# as parameters to method 'essay_writer'
# Output: An essay without grammar mistakes!
# Steps: Write out essay similar to example. Make sure there's way to use
# all 5 place holders. 


# 3. Initial Solution
#def essay_writer(title, topic, date, thesis_statment, pronoun) 
#    if pronoun == "male"
#      pronounOne = "His"
#      pronounTwo = "his"
#      pronounThree = "He"
#      pronounFour = "a person"
#    elsif pronoun == "female"
#      pronounOne = "Her"
#      pronounTwo = "her"
#      pronounThree = "She"
#      pronounFour = "a person"	
#    elsif pronoun == "place"
#      pronounOne = "Its"
#      pronounTwo = "its"
#      pronounThree = "It"
#      pronounFour = "a place" 	
#    else
#      pronounOne = "Its"
#      pronounTwo = "its"
#      pronounThree = "It"
#      pronounFour = "a thing"
#    end
#puts "#{title}"
#puts ""
#puts "#{topic} remains #{pronounFour} remembered by many people. #{pronounOne} contributions were significant. We could all benifit from examining #{pronounTwo} legacy. Since #{date} #{pronounTwo} impact has been felt. #{thesis_statment}. #{pronounThree} will not be forgotten."
#end 

# 4. Refactored Solution
puts "enter title please"
title = gets.chomp
puts "enter topic"
topic = gets.chomp
puts "enter date please"
date = gets.chomp
puts "enter thesis"
thesis_statment = gets.chomp
puts "enter pronoun please"
pronoun = gets.chomp

def essay_writer(title, topic, date, thesis_statment, pronoun) 
    if pronoun == "male"
      pronounOne = "His"
      pronounTwo = "his"
      pronounThree = "He"
      pronounFour = "a person"
    elsif pronoun == "female"
      pronounOne = "Her"
      pronounTwo = "her"
      pronounThree = "She"
      pronounFour = "a person"	
    elsif pronoun == "place"
      pronounOne = "Its"
      pronounTwo = "its"
      pronounThree = "It"
      pronounFour = "a place" 	
    else 
      pronounOne = "Its"
      pronounTwo = "its"
      pronounThree = "It"
      pronounFour = "a thing"
    end
puts "#{title}"
puts ""
puts "#{topic} remains #{pronounFour} remembered by many people. #{pronounOne} contributions were significant. We could all benifit from examining #{pronounTwo} legacy. Since #{date} #{pronounTwo} impact has been felt. #{thesis_statment}. #{pronounThree} will not be forgotten."
end 







# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


