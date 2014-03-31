# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked: Mikee Pourhadi
#    What I learned from this solution

# I learned about the .dup method, which I accidentally thought he used and so went to look
# it up. I believe it is very similar to the .clone method that I used, except that .clone
# will duplicate an entire object, whereas .dup will use the class of the descendant object
# to create the new instance (from Ruby Docs). I'm fairly sure I know what that means, but
# I'm probably wrong.
# Copy solution here:
class Array
	def pad(min_length, pad = nil)
		dup = self.clone
		while dup.length < min_length
			dup << pad
		end
		dup
	end

	def pad!(min_length, pad = nil)
		while self.length < min_length
			self << pad
		end
		self
	end
end




# 2. Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# 3. My original solution:

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

# 4. My refactored solution:

def pad!(size, value = nil)
    (size - self.length).times { self << value }
   self
  end


# 5. Reflection

# While I learned a lot from this exercise, I'm not sure that I would change my code. Other
# people's code was great as well, but mine seems pretty simple and concise. The only thing
# I'm still curious about, that I didn't find in other people's code (and didn't do myself)
# is what happens if the value is negative? In irb nothing happens; as in, the orginal array
# isn't altered at all. But should we be checking for that in the first place? I'm not sure.



