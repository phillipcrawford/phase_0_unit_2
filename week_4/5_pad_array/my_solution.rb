# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# two different methods input an Array
# What is the output? (i.e. What should the code return?)

# An array padded with the second parameter as many times as the first parameter.
# If there is no second parameter then pad the array with nil values

# What are the steps needed to solve the problem?
# for non destructive pad method, we copy contents of self into another array.
# Then we push the second parameter to the copied array as many times as the first
# parameter minus the number of contents in the array to begin with. If there's no
# second parameter keep it nil. The destructive pad! method does the same exact thing,
# but it skips the step of copying into another array. 

# 2. Initial Solution
#class Array

#def pad!(upTo, thing)
#	(upTo - self.length)
class Array
	
	def pad(upTo, padding = nil)		
		temp = []

		self.each do |element|
			temp.push(element)
		end

		t= temp.length 
		while t < upTo		
			temp.push(padding)
			t +=1;					
		end

		return temp
	end
    
    def pad!(upTo, padding = nil)
		t= self.length 
		while t < upTo		
			self.push(padding)
			t +=1;					
		end
		return self
	end



end

# 3. Refactored Solution

# I do not know how to refactor this better, but I'm sure there are ways. My while loop is a 
# bit long, though I don't know how to iterate through a while loop without incrementing a
# counter variable. 

# 4. Reflection 
# What parts of your strategy worked? What problems did you face?

#   Knowing where to start. It took me a while to figure out we needed to place our methods inside
# of class Array. I was wondering, where is this array I begin with? Then I learned about the self method

# What questions did you have while coding? What resources did you find to help you answer them?

#   Embarrassingly enough how loops work. A little rusty, and I know my while loop is too long.I used this
# resource:       http://www.tutorialspoint.com/ruby/ruby_loops.htm

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#   Not any ruby concepts.

# Did you learn any new skills or tricks?

#   About classes and self. Similar to this in javascript

# How confident are you with each of the learning objectives?

#   I know them for now, I'm worried I might forget in a few days.

# Which parts of the challenge did you enjoy?

#   It was a puzzle for me, but once I figured out what was asked of me, a workable answer soon followed

# Which parts of the challenge did you find tedious?

#   Figuring out array we begin with is part of class array, I thought how the assignment says
# array#pad was a typo after looking into pad_spec. But its no typo. The array we're working with is
# what the method we're building will be called on.