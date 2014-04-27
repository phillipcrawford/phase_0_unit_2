# U2.W4: Research Methods

i_want_pets = ["I", "want", 4, "pets", "but", "I", "only", "have", 3]
my_family_pets_ages = {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, 
            "Annabelle" => 2, "Ditto" => 5}

# Person 1's solution (Andrew Koines)
#def my_array_finding_method(source, thing_to_find)
  # Your code here!
#end

#def my_hash_finding_method(source, thing_to_find)
  # Your code here!
#end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2 (Amelia Downs)
def my_array_modification_method(source, thing_to_modify)
  len = source.length; # find the number of elements in the array
  # for each element in the array see if it is a string
  0.upto(len - 1) do |loc|
  	# if the element is NOT a string, add thing_to_modify to it
  	if source[loc].is_a?(String) === false
  		source[loc] += thing_to_modify
  	end
  end
  return source
end

  
def my_hash_modification_method(source, thing_to_modify)

	source.each {|name, age| source[name] += thing_to_modify}

	return source 


# Person 3 (Jeff Kynaston)
def my_array_sorting_method(source)
  sortedArray = source.sort_by { |a| a.to_s }
  return sortedArray.uniq!
 end

def my_hash_sorting_method(source)
  sortedHash = source.sort_by { |name,age| age }
  return sortedHash
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4 (Phillip Crawford, Jeuel Wilkerson)

def my_array_deletion_method(source, thing_to_delete)

source = source.delete_if {|element| element.class == String && element.include?(thing_to_delete)
}
end


def my_hash_deletion_method(source, thing_to_delete)
source.delete_if {|x, y| x == thing_to_delete }
end

# Identify and describe the ruby method you implemented. 
# array_delete uses an "delete_if" enumurable which goes through an array and deletes it IF certain conditions hold true
# in this case, the nec conditions were being a string and including a sub-string "thing_to_delete"
# hash_delete also uses "delete_if" enumrable, which deletes a key (regardless of its value), if that key is identical to "thing to delete"


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

#p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
#p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
#p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
#p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
#p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
#p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
puts my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
puts my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# What parts of your strategy worked? What problems did you face?

#   Jeuel and I tackled this problem well. We figured out the problem, opened a stypi, and I navigated
# and he drove. We figured it out very quickly.  

# What questions did you have while coding? What resources did you find to help you answer them?

#   How to use the include? method and why it wasn't working on our keys in the hash as we wanted it to.
# We figured out it did different things on different object types, what we wanted was specific to strings. 
# Jeuel figured checking to make sure our key is a string on stack overflow.

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#   I have the concepts down, its just an issue of looking throught the ruby api for methods that 
# accomplish what I'm looking for.

# Did you learn any new skills or tricks?

#   Honed existing skills, more practice with syntax

# How confident are you with each of the learning objectives?

#   Very

# Which parts of the challenge did you enjoy?

#   It was simple, every obstacle could easily be cleared by going onto stackoverflow

# Which parts of the challenge did you find tedious?

#   I did not find this challenge tedious because I could ask Jeuel about things I didn't understand.
# 
# 
# 