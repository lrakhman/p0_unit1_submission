# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def mode(array)
  frequency = Hash.new(0)
  array.each { |i| frequency[i] += 1 }

  new_array = []
  frequency.each do |x, y|
    if y == frequency.values.max
      new_array << x
    end
  end

  new_array.sort

end



# 3. Refactored Solution

# 4. Reflection 