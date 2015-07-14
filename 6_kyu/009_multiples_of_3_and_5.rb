# 58_multiples_of_3_and_5.rb
# http://www.codewars.com/kata/multiples-of-3-and-5
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# If we list all the natural numbers below 10 that are multiples of 3 and 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of
# 3 or 5 *below* the number passed in.

def solution(n)
  sum = 0
  (1...n).each { |num| num % 3 == 0 || num % 5 == 0 ? sum += num : false }
  sum
end

# alternatives

def solution2(n)
  (1...n).select { |i| i % 3 == O || i % 5 == 0 }.inject(:+)
end

p solution(10) # 23
