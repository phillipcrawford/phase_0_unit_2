# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# A number
# What is the output? (i.e. What should the code return?)
# The same number with comma's every 3 digits

# What are the steps needed to solve the problem?
# My first step was to look up methods that might parse the number with commas.
# I typed 'comma separtated numbers ruby' and got an answer on stackoverflow that solves 
# the challenge outright. While part of me thought I should figure out my own way, a bigger part
# wants to use time to understand the most elegant solution. The guy on stackoverflow  explains 
# much of it, but I was intrigued by the syntax of what's inside the gsub: regular expressions.
# I wanted to learn that. Here's whats going on, first we convert our number to a string. Then we reverse
# it. Then for every three digits followed by a digit, insert a comma. Then reverse it back. It's complex
# but I found a lot of great resources. 

# 2. Initial Solution

#def separate_comma(number)   
#   puts number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
#end

# 3. Refactored Solution

def separate_comma(number)   
   return number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\1,').reverse
end

# 4. Reflection 
# What parts of your strategy worked? What problems did you face?

#   I faced a fork in the road as to how to spend me time here, I decided to learn something more difficult.
# learning all of it so I'm comfortable with it is a work in progress, I think I'm comfortable with this
# use of regular expressions but not reg expressions in general 

# What questions did you have while coding? What resources did you find to help you answer them?

#   I used many resources to find out about regular expressions. The '\\1,' confuses me. I know it addsthe ins and 

# What concepts are you having trouble with, or did you just figure something out? If so, what?

#   The '\1,' confuses me. I know it adds a comma, but experimenting with changing the number did not 
# illuminate much. The guy on stack overflow has '\\1,'. I tried changing the number, but I don't quite
# get this part. I think it means add one comma, but why wouldn't ',' do that?

# Did you learn any new skills or tricks?

#   oh yes, I learned about matching regular expressions. Refreshed some gsub syntax. 

# How confident are you with each of the learning objectives?

#   Pretty confident, I learned a lot through reverse engineering an answer. 

# Which parts of the challenge did you enjoy?

#   Learning new stuff, refreshing ruby syntax

# Which parts of the challenge did you find tedious?

#   Researching across the internet
 
# Resources I found helpful 
# http://stackoverflow.com/questions/1078347/is-there-a-rails-trick-to-adding-commas-to-large-numbers
# http://www.tutorialspoint.com/ruby/ruby_regular_expressions.htm
# http://www.ruby-doc.org/core-2.1.1/String.html#method-i-gsub