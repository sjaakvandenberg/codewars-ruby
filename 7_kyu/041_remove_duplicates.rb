# 53_remove_duplicates.rb
# http://www.codewars.com/kata/remove-duplicates
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# You are to write a function called `unique` that takes an array of integers
# and returns the array with duplicates removed. It must return the values in
# the same order as first seen in the given array. Thus no sorting should be
# done, if 52 appears before 10 in the given array then it should also be that
# 52 appears before 10 in the returned array.

# Assumptions:
# ------------
# - all values given are integers (positive or negative)
# - you are given an array but it may be empty
# - the array may or may not have duplicates
# - you cannot use the `uniq` method on arrays, or the `nub` function

# Example:
# --------
# unique([1, 5, 2, 0, 2, -3, 1, 10]).inspect # [1, 5, 2, 0, -3, 10]
# unique([]).inspect                         # []
# unique([5, 2, 1, 3]).inspect               # [5, 2, 1, 3]

def unique(num)
  num & num
end

# alternatives

def unique2(num)
  num.to_set.to_a
end

def unique3(num)
  arr = []
  num.each { |i| arr.push(i) unless arr.include?(i) }
  arr
end

p unique([1, 5, 2, 0, 2, -3, 1, 10])  # [1, 5, 2, 0, -3, 10]
p unique([])                          # []
p unique([5, 2, 1, 3])                # [5, 2, 1, 3]
