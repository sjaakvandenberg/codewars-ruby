# 55_factorial_factory.rb
# http://www.codewars.com/kata/factorial-factory
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In mathematics, the factorial of an integer `n` is written as `n!`. It is
# equal to the product of n and every integer preceding it.

# Example: 5! = 1 * 2 * 3 * 4 * 5 = 120

# You are guaranteed an integer argument. For any values outside of the
# positive range, return `nil`.

# 0! is always equal to 1. Negative values should return nil.

def factorial(n)
  if n < 0
    return nil
  else
    product = 1
    (1..n).each { |num| product *= num }
    product
  end
end

# alternative

def factorial2(n)
  return nil if n < 0
  n == 0 ? 1 : n * factorial2(n - 1)
end

p factorial(5)    # 120
p factorial(-25)  # nil
p factorial(0)    # 1
p factorial(1)    # 1
p factorial(2)    # 2
p factorial(4)    # 24
p factorial(8)    # 40320
