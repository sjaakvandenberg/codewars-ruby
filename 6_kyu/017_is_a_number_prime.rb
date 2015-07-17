# 017_is_a_number_prime.rb
# http://www.codewars.com/kata/is-a-number-prime
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Define a function `isPrime` that takes one integer argument and returns
# `true` or `false` depending on whether the integer is a prime or not.

# A prime is a natural number greater than 1 that has no positive divisors
# other than 1 and itself.

# isPrime(5) # => true
# isPrime(4) # => false

# You can assume you will be given an integer input. You can not assume that
# the integer will only be positive. You may be given negative numbers.

def prime?(num)
  return false if num < 2               # check for numbers under 2
  (2...num).none? { |x| num % x == 0 }  # check whether num is evenly divisible
end                                     # by the integers leading up to it

p prime?(5)     # true
p prime?(47)    # true
p prime?(919)   # true
p prime?(2591)  # true
p prime?(-4)    # false
p prime?(-7)    # false
p prime?(4)     # false
p prime?(8)     # false
p prime?(16)    # false
p prime?(512)   # false
