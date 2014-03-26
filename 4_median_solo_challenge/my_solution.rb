# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# The input is an array of numbers.
# What is the output? (i.e. What should the code return?)
# The output is one number (the median).
# What are the steps needed to solve the problem?
# 1. Sort the array
# 2. Find out if the array has an even number of elemtns or an odd number of elements. 
# 3. If the array has an odd number of elements, 
# divide the length by two to get the median value.
# 4. If the array has an even number of elements, 
# take the middle two elements, add them together,
# then divide them by two for the average. 

# 2. Initial Solution

def median(array)
  sorted_array = array.sort
  array_length = array.length
  if array_length.odd?
    return sorted_array[array_length/2]
  else
    return (sorted_array[array_length/2 - 1] + sorted_array[array_length/2]).to_f / 2
  end
end


# 3. Refactored Solution

def median(num_list)
  sorted_list = num_list.sorted_array
  list_length = num_list.length
  list_length.odd? ? sorted_list[list_length/2] : (sorted_array[array_length/2 - 1] + sorted_array[array_length/2]).to_f / 2
end


# 4. Reflection 

# This exercise was ok. It took me a while to work through if I needed to convert my number
# to a float or not, but I believe that it matters (because what if your array is [1,3,4,5]?)
# I also think my refactored solution is a bit hard to read; meaning, it's more compact, 
# but the ternary statement is WAY too long. I like going back to ruby!