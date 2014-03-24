# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? 
# The input for the first method will be an array of numbers,
# and for the second method will be an array of numbers and strings.
# What is the output? (i.e. What should the code return?)
# The output for the first method will be an integer, and for the second will be a string.
# What are the steps needed to solve the problem?
# Steps for method #1: 
# 1. input an array of integers
# 2. loop through each element of the array while adding them all together
# 3. keep track of that sum 
# 4. return the sum

# Steps for method #2
# 1. input an array of mixed elements (integers, strings, symbols, etc.)
# 2. join each element in the array into one string with one space between the elements
# 3. capitalize the first element in the new string
# 4. interpolate the string into a new string with a period at the end


# 2. Initial Solution
def total(an_array)
  an_array.reduce(:+)
end

def sentence_maker(any_array)
  new_string = any_array.join(" ").capitalize
  final_string = "#{new_string}."
end

# 3. Refactored Solution
# While I could write something like this:

# def sentence_maker(any_array)
#   new_string = "#{any_array.join(" ").capitalize}."
# end

# which is less code, I'm not convinced that it is more readable. 
# That could be because I'm new to Ruby and I like to follow precise
# steps and see how the lines of code move from one to the next.

# 4. Reflection 
# This exercise was fairly easy. I already knew the .inject and .reduce methods, 
# but I've seen the :+ notation a few times and had to look it up to really understand
# what it means. I'm still not 100% certain, but here's how it is supposed to work:
# array.inject {|sum, n| sum + n} (this can also be used with array.reduce). Therefore, 
# you can write array.inject(:*) to multiple all the numbers in an array. I'm not sure about division
# or subtraction, so I'll have to play around with that in irb. Here's where the 
# documentation is: http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-inject