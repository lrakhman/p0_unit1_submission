# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# The input will be an integer, and also an optional other value (either number or string).
# What is the output? (i.e. What should the code return?)
# The output will be an array that has a certain number of elements added 
# (whatever the input was from before).
# What are the steps needed to solve the problem?
# 1. calculate the length of the array on which you'll be calling the method.
# 2. in order to pad the array, make a loop that loops exactly the difference
# between how long your array is and how long you need it to be. Return the new array.
# 3. if using the << operator, then name the first method with a bang (!) because it
# will be destructive. 
# 4. create another method, a non-destructive one, called pad. 
# 5. clone the array first, then call the pad! method all within your second method.


# 2. Initial Solution

class Array
  def pad!(size, value = nil)
    array_length = size - self.length 
    array_length.times do
     self << value
    end
   self
  end

  def pad(size, value = nil)
  self.clone.pad!(size, value)
  end
end


# 3. Refactored Solution

# I'm not really sure how to refactor this. I think the arguments have ok names,
# and the code is pretty concise. I could do the following for the first method:

  def pad!(size, value = nil)
    (size - self.length).times { self << value }
   self
  end

# but I think that it's a little less readable. 


# 4. Reflection 

# This was a more difficult exercise the first time I finished it (which was a little while)
# ago, when I initially had access to Socrates. I had to go over my steps countless times
# before I really deeply understood what was happening (especially the part where I have to
# define the first method as destructive instead of the second method). It was also
# interesting to use the self keyword in this excercise, since I'm already in the Array class.




