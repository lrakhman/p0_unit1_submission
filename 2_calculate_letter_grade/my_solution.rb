# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# The input is an array of integers.
# What is the output? (i.e. What should the code return?)
# The output is a string.
# What are the steps needed to solve the problem?
# 1. define method get_grade to take one argument
# 2. make sure that the argument falls between the range of 0 - 100
# 3. the argument will be an array
# 4. sum up the array
# 5. divide the sum by the number of elements in the array, which will provide the average grade
# 6. match the average grade to a string; either A, B, C, D, or F
# 7. return the letter grade associated with the number grade


# 2. Initial Solution


def get_grade(array)

  if array.min < 0 || array.max > 100
    return "Invalid score assigned"
  end

  sum = 0
  array.each {|x| sum += x }

  average = sum.to_f/array.length

  if average >= 90
    return "A"
  elsif average >= 80
    return "B"
  elsif average >= 70
    return "C"
  elsif average >= 60
    return "D"
  else
    "F"
  end
end

# 3. Refactored Solution

def get_grade(grades)

  if grades.min < 0 || grades.max > 100
    return "Invalid score"
  end

  average_grade = grades.reduce(:+)/grades.length

  case average_grade 
  when 90..100
    return "A"
  when 80..89
    return "B"
  when 70..79
    return "C"
  when 60..69
    return "D"
  else
    return "F"
  end
end



# 4. Reflection 

# Refactoring was so much fun for this exercise! 
# I used my new .reduce method, and I got more
# practice with the case statement. I even temporarily
# altered the rpec to test for when an integer
# was out of bounds, and that worked as well (which is great, 
# because I wrote my very first test!)