# 15_find_duplicates.rb
# http://www.codewars.com/kata/find-duplicates
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Given an array, find the duplicates in that array, and return a new array
# of those duplicates.

# _Note_: numbers and their corresponding string representations should not
# be treated as duplicates (i.e. '1' != 1).

def duplicates(arr)
  arr.select { |e| arr.count(e) > 1 }.uniq
end

p duplicates([1, 2, 4, 4, 3, 3, 1, 5, 3, '5']) # [1, 4, 3]
p duplicates([0, 1, 2, 3, 4, 5]) # []
