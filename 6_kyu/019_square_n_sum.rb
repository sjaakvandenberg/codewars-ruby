# 019_square_n_sum.rb
# http://www.codewars.com/kata/square-n-sum
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the squareSum method so that it squares each number passed into it
# and then sums the results together.

# squareSum([1, 2, 2]) # 9

def square_sum(numbers)
  sum = 0                               # reset the sum
  numbers.each { |num| sum += num * num }  # add the square of each num to sum
  sum                                   # return sum
end

# alternative

def square_sum2(numbers)
  numbers.map { |num| num * num }.reduce(:+)
end

p square_sum([1, 2, 2]) # 9
p square_sum([1, 2, 4]) # 21
