# 42_flatten.rb
# http://www.codewars.com/kata/flatten-1
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that flattens an `Array` of `Array` objects into a flat
# `Array`. Your function must only do one level of flattening.

# flatten [1, 2, 3] # => [1, 2, 3]
# flatten [[1, 2, 3], ['a', 'b', 'c'], [1]] # => [1, 2, 3, 'a', 'b', 'c', 1]
# flatten [[[1, 2, 3]]] # => [[1, 2, 3]]

def flatten(array)
  array.flatten(1)
end

# alternative

def flatten2(array)
  array.inject([]) { |a, e| a + (e.is_a?(Array) ? e : [e]) }
end

p flatten [1, 2, 3]                    # => [1, 2, 3]
p flatten [[1, 2, 3], %w(a b c), [1]]  # => [1, 2, 3, 'a', 'b', 'c', 1]
p flatten [[[1, 2, 3]]]                # => [[1, 2, 3]]
