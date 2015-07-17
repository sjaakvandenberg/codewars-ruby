# 020_array_dot_diff.rb
# http://www.codewars.com/kata/array-dot-diff
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Your goal in this kata is to implement a difference function, which subtracts
# one list from another. It should remove all values from list `a`, which are
# present in list `b`.

# array_diff([1, 2], [1]) == [2]

# If a value is present in array `b`, all of its occurrences must be removed
# from the other.

def array_diff(a, b)
  a - b
end

# alternative

def array_diff2(a, b)
  b.each { |n| a.delete n }
  a
end

p array_diff([1, 2], [1])
