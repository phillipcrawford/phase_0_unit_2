# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked was Amelia Downs'
#    What I learned from this solution. I learned about the clone method and how while loops increment
# Copy solution here:
#class Array 

#	def pad! (wanted_length, padding = nil)
		# as long as the length of the array is shorter then wanted
		# add one 'pad' to the end of the array
#		while wanted_length > length
#			self.push(padding)
#		end 
#		return self
#	end


#	def pad (wanted_length, padding = nil)
#		self.clone.pad!(wanted_length, padding)
#	end
#end




# 2. Second Person's solution I liked was jeffkynaston
#    What I learned from this solution: I learned about the .map method from jeff's code
# Copy solution here: 
#class Array

#	def pad(min_length, pad_value = nil)
#		array = self.map { |x| x }
#		length = array.length
#		if length >= min_length
#			return array
#		else
#			(min_length-length).times { array.push(pad_value) }
#			return array
#		end
#	end

#	def pad!(min_length, pad_value = nil)
#		length = self.length
#		if length >= min_length
#			return self
#		else
#			(min_length-length).times {	self.push(pad_value) }
#			return self
#		end
#	end
#end



# 3. My original solution:
#class Array
	
#	def pad(upTo, padding = nil)		
#		temp = []

#		self.each do |element|
#			temp.push(element)
#		end

#		t= temp.length 
#		while t < upTo		
#			temp.push(padding)
#			t +=1;					
#		end

#		return temp
#	end
    
#    def pad!(upTo, padding = nil)
#		t= self.length 
#		while t < upTo		
#			self.push(padding)
#			t +=1;					
#		end
#		return self
#	end

#end


# 4. My refactored solution:

class Array	
	def pad(upTo, padding = nil)		
		temp = self.clone		 
		while temp.length < upTo		
			temp.push(padding)								
		end
		temp
	end
    
    def pad!(upTo, padding = nil)		 
		while self.length < upTo		
			self.push(padding)							
		end
		self
	end
end


# 5. Reflection
# What parts of your strategy worked? What problems did you face?

# I am good at reverse engineering. I knew how to navigate to people's solution on github. This 
# went by quickly

# What questions did you have while coding? What resources did you find to help you answer them?

#   I learned about new methods from Jeff and Amelia that I hadn't seen before. I felt seeing the 
# methods in action made them self explanatory, such as clone and map.

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#   no concepts.
# Did you learn any new skills or tricks?

#  Clone, map, and how to use a while loop

# How confident are you with each of the learning objectives?

#   Very, learn from others by seeing their code in action. 

# Which parts of the challenge did you enjoy?

#   Reverse engineering

# Which parts of the challenge did you find tedious?

#   I didn't find it tedious