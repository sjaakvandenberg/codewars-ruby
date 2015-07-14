# 001_array_split.rb
# http://www.codewars.com/kata/enumerable-magic-number-30-split-that-array
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Create a method `partition` that accepts a list and a block. It should
# return two arrays: the first, with all the elements for which the given
# block returned true, and the second for the remaining elements

def partition(list, &block)
  # method accepts an array and a block and returns two arrays,
  # one with the elements for which the block returns true and
  # one with the elements for which the block returns false
  # if the block returns true
  list.partition(&block)
end

animals = %w(cat dog duck cow donkey)
p partition(animals) { |animal| animal.size == 3 }
# [["cat", "dog", "cow"], ["duck", "donkey"]]
