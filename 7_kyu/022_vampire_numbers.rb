# 33_vampire_numbers.rb
# http://www.codewars.com/kata/vampire-numbers-1
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Our loose definition of Vampire Numbers can be described as follows:

# 6 * 21 = 126
# 6 and 21 would be valid 'fangs' for a vampire number as the digits
# 6, 1, and 2 are present in both the product and multiplicands

# 10 * 11 = 110
# 110 is not a vampire number since there are three 1's
# in the multiplicands, but only two 1's in the product

# Create a function that can receive two 'fangs' and determine
# if the product of the two is a valid vampire number.

def vampire_number?(a, b)
  result = a * b
  # Add the a and b parameters together in an array, join them
  # and sort the characters. If it is equal to the product of
  # the parameters, converted a string and sorted by character,
  # return true. Otherwise, return false.
  [a].push(b).join.chars.sort.eql?(result.to_s.chars.sort)
end

# alternative

def vampire_test(a, b)
  (a.to_s + b.to_s).chars.sort == (a * b).to_s.chars.sort
end

p vampire_number?(21, 6)      # true
p vampire_number?(204, 615)   # true
p vampire_number?(30, -51)    # true
p vampire_number?(-246, -510) # false
p vampire_number?(210, 600)   # true
p vampire_number?(1, 1)       # false
