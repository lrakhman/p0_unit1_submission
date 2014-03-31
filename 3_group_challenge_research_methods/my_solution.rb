# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select {|i| i =~ /#{thing_to_find}/}
end

def my_hash_finding_method(source, thing_to_find)
  source.select {|k, v| v == thing_to_find}.keys
end

# Identify and describe the ruby method you implemented. 
# I used the .select method on both the array and the hash. When used with an Array,
# this method will look through each element and return a new array of the ones that match
# the proper input (in this case, a regex). When used with a Hash, however, it returns
# a NEW HASH. So be careful! In the case of a hash, you must specify whether you're 
# looking for a key match, or a value match. It will then loop through each key-value
# pair and return a hash, NOT AN ARRAY, of the matches. I then used the .keys method,
# which WILL return an array of keys (the same with .values, which returns an array of values.)
# One super cool thing I stumbled upon though:
# http://stackoverflow.com/questions/2268421/ruby-regular-expression-using-variable-name. 
# What is that, you ask? Apparently string interpolation works with regular expressions!!
# What!?!? Mind blown. 


# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_array_modification_method(source, thing_to_modify)
    updated_array = [];
	source.each do |x| 
		if x.is_a? Integer 
			x += thing_to_modify
			updated_array << x
		else
		    updated_array << x
		end
	end
    updated_array
end

def my_hash_modification_method(source, thing_to_modify)
	source.each do |name, age| 
		source[name] = age += thing_to_modify
	end
end

# Identify and describe the ruby method you implemented. 
# (FROM MIKEE:)
# Unfortunately, I can't find out how to manipulate the original object (for the array only, actually). I tried replace, delete, index.at,
# and I just couldn't get it to work. Instead, I used each and just made a new array or object. I feel like this is completely incorrect.
#

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source, thing_to_locate)
  # Your code here!
end

def my_hash_sorting_method(source, thing_to_locate)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4 

def my_array_deletion_method(source, thing_to_delete)
  source.delete("thing_to_delete")
end

def my_hash_deletion_method(source, thing_to_delete)
    source.delete_if {|key,value| value = num}
end

# Identify and describe the ruby method you implemented. 
# (FROM NATALIE:)
# I used the delete method on the array. The delete method deletes all items equal to the object in the parentheses.
# For the hash, I used the delete_if method. The delete_if method deletes any item for which the block evaluates to true. I tried both evaluating
# the key and the value from the pair and both ways work...so instead of the above you could also use key = name inside the block for example.


# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# I learned a great deal from this exercise, and not just from my own research. 
# I've never even heard of the .delete or .delete_if methods, so that was very useful.
# Also, working on Mikee's exercise was a learning experience, because I could take
# what he said about not being able to manipulate the object and go from there. 
# 
# 
# 
# 