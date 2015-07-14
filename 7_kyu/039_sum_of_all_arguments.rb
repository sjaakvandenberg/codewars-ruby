# 51_sum_of_all_arguments.rb
# http://www.codewars.com/kata/sum-of-all-arguments
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that finds the sum of all its arguments.

# Example:

# sum 1, 2, 3,       # => 6
# sum 1, 2, 3, 4, 6  # => 16

def sum(*args)
  sum = 0
  args.each { |num| sum += num }
  sum
end

# alternatives

def sum2(*args)
  args.inject(:+)
end

def sum3(*args)
  args.reduce(:+)
end

p sum 1, 2, 3, 4, 5 # 15

# tests

Test.assert_equals(sum(1, 2, 3, 4, 5), 15)
Test.assert_not_equals(sum(1, 2, 3, 4, 5), 16)
Test.assert_equals(sum(-34, 30), -4)
Test.assert_not_equals(sum(-34, 30), 2)
Test.assert_equals(sum(-34, 0), -34)
Test.assert_not_equals(sum(-34, 0), 1)
