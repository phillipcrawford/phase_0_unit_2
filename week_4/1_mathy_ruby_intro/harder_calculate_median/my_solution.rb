# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?

# an array, maybe numbers, maybe letters, they might be unsorted

# What is the output? (i.e. What should the code return?)

# an array containing the median if the starting array was sorted

# What are the steps needed to solve the problem?

# make function that takes an array as parameter
# sort array that came as parameter
# check to see if length of array is even or odd
# if odd return middle value
# if even return average of two middle values


# 2. Initial Solution

# def median(n)
#  temp = n.length
#  n= n.sort!
#  if (temp % 2 == 1)
#  	return n[(temp/2).floor]
#  else
#    return (n[((temp/2)-1)] + n[(temp/2)])/2
#  end
#end



# 3. Refactored Solution
def median(n)  
  temp = n.length
  n.sort!
  if (temp % 2 == 1)
    return n[(temp/2).floor]
  else
    return (n[temp/2-1] + n[temp/2])/2.0
  end
end


# 4. Reflection 
# What parts of your strategy worked? What problems did you face?

# This problem was part of what we worked on in a group last week. I did the pseudocode for that,
# so I had an advantage in just remembering how I did median in javascript and doing something similar in 
# ruby. The hurdles I faced were realizing the array needed to be sorted, and that my division calculation
# for even length arrays was dividing integers instead of decimals.

# What questions did you have while coding? What resources did you find to help you answer them?

# No questions really, beyond looking at rspec failures and thinking what is the hurdle I'm currently 
# facing? Time got me the answer.

# What concepts are you having trouble with, or did you just figure something out? If so, what?

# No concepts 

# Did you learn any new skills or tricks?

# Practiced ruby syntax.

# How confident are you with each of the learning objectives?

# I'm confident about building a median function in ruby

# Which parts of the challenge did you enjoy?

# The mathyness of it

# Which parts of the challenge did you find tedious?

# Debugging