# 12_counting_power_sets.rb
# http://www.codewars.com/kata/counting-power-sets
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In this kata, you must create a function `powers` that takes an array
# and returns the number of subsets possible to create from that list.
# In other words, count the power sets.

# For instance:

# `powers([1, 2, 3]) => 8`

# due to

# powerSet([1, 2, 3]) =>
# [[],
# [1],
# [2],
# [3],
# [1, 2],
# [2, 3],
# [1, 3],
# [1, 2, 3]]

# Your function should be able to count sets up to the size of 500, so
# watch out: pretty big numbers occur there!

# You should treat each array passed as a set of unique values for this kata.

def arr(n)
  (0..n).to_a
end

def powers(list)
  # 0.upto(list.size).flat_map { |n| list.combination(n).to_a }
  2**list.size
end

puts "3: #{powers(arr(3))}"     # 8
puts "5: #{powers(arr(5))}"     # 32
puts "20: #{powers(arr(20))}"   # 1_048_576
puts "100: #{powers(arr(100))}" # 1_267_650_600_228_229_401_496_703_205_376

# tests used

# Test.assert_equals(powers([1, 2, 3]), 8, 'Failed')
# Test.assert_equals(powers([1, 2, 3, 4, 5]), 32, 'Failed')
# Test.assert_equals(powers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]), 1_048_576, 'Failed')
