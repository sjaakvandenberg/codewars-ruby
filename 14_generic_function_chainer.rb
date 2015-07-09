# 14_generic_function_chainer.rb
# http://www.codewars.com/kata/chain-me
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a generic function chainer that takes a starting value, and an array
# of functions to execute on it (array of symbols for Ruby). Return the final
# value after execution is complete.

def add num
  num + 1
end

def mult num
  num * 30
end

# input = a numeric number
# fs = an array of symbols, that point to methods

def chain(input, fs)
  arr = [fs.size]
  fs[0](input)
end

chain (2, [:add, :mult]) # => 90
