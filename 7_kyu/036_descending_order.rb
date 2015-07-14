# 036_descending_order.rb
# http://www.codewars.com/kata/descending-order
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Your task is to make a function that can take any non-negative integer as
# an argument and return it with its digits in descending order. Descending
# order means that you take the highest digit and place the next highest
# digit immediately after it.

def descending_order(n)
  # convert the integer to a string and convert the characters to an array
  # sort that array, reverse it and join the elements together and convert
  # it back to an integer
  n.to_s.chars.sort.reverse.join.to_i
end

p descending_order(1)             # 54321
p descending_order(12345)         # 54321
p descending_order(1_254_859_723) # 9875543221
