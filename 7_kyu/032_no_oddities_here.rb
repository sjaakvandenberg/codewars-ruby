# 032_no_oddities_here.rb
# http://www.codewars.com/kata/no-oddities-here
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a small functions that returns the values of an array that are not odd.

# All values in the array will be integers. Return the good values in the
# order they are given.

def odds(values)
  values.select(&:even?)
end

p odds([-3, 4, 7, -1, 0, 9, 4, 6]) # [4, 0, 4, 6]
