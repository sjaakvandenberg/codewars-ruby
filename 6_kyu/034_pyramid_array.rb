# 034_pyramid_array.rb
# http://www.codewars.com/kata/pyramid-array
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that when given a number >= 0,
# returns an Array of ascending length subarrays.

def pyramid(n)
  (1..n).map { |e| Array.new(e, 1) }
end

# alternative

def pyramid2(n)
  (1..n).map { |e| [1] * e }
end

p pyramid(0) # []
p pyramid(1) # [[1]]
p pyramid(2) # [[1], [1, 1]]
p pyramid(3) # [[1], [1, 1], [1, 1, 1]]

# tests

# Test.assert_equals(pyramid(0), [])
# Test.assert_equals(pyramid(1), [[1]])
# Test.assert_equals(pyramid(2), [[1], [1, 1]])
# Test.assert_equals(pyramid(3), [[1], [1, 1], [1, 1, 1]])
