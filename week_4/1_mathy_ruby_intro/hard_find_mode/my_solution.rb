# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [with: Kirstin Jarchow]

# 1. Pseudocode

# What is the input?

#an array

# What is the output? (i.e. What should the code return?)

#an array containing only the most common values (the mode) of the inputted array

# What are the steps needed to solve the problem?

#set popular to one
#make empty hash
#make empty array (mode)

#for each value in our array
#check if value is already a key in hash 
#if it is, increment value of key by 1
#    check to see if value greater than popular 
#    if it is set popular to that value
#if it isn't create it as key in hash and set to 1

#for each key in our hash
#check to see if the value of key is equal to popular
#if it is push it to our mode array
    
#return the mode array


# 2. Initial Solution

#def mode(array)
#    hash = Hash.new
#    mode = Array.new
#    popular = 1
    
#    array.each do { |x|
#        if hash.has_key?(x)
#            hash[x] += 1
#            if hash[x] > popular
#                popular = hash[x]
#            end
#        else 
#            hash[x] = 1
#        end
#    }
    
#    hash.each do{ |x, y|
#        if y == popular
#            mode.push(x)
#        end
#    }
    
#    mode
#end


# 3. Refactored Solution

def mode(array)
    hash = Hash.new
    mode = Array.new
    popular = 1
    
    array.each { |x|
        if hash.has_key?(x)
            hash[x] += 1
            if hash[x] > popular
                popular = hash[x]
            end
        else 
            hash[x] = 1
        end
    } 
    
    hash.each { |x, y|
        if y == popular
            mode.push(x)
        end
    } 
    
    mode
end 

# 4. Reflection 
# What parts of your strategy worked? What problems did you face?

# Kirstin and I traded off between navigator and driver well. We worked together on what little syntax
# either of us didn't know, but I think both of us coming into this prepared helped a lot. 

# What questions did you have while coding? What resources did you find to help you answer them?

# Syntax questions, we used each other to answer them.

# What concepts are you having trouble with, or did you just figure something out? If so, what?

# No concepts, I get math behind this

# Did you learn any new skills or tricks?

# A bit of a refresher on hashes. I thought each key had to be initialized to a value or else 
# writing into it might think values were keys. But no.

# How confident are you with each of the learning objectives?

# Very, I think this is harder than the hardest challenge this week.

# Which parts of the challenge did you enjoy?

# The math.

# Which parts of the challenge did you find tedious?

# I enjoyed this challenge, Kirstin & I got through it quickly