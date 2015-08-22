# 019_exponent_method.rb
# http://www.codewars.com/kata/exponent-method
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Create a method called "power" that takes two integers and returns the value
# of the first argument raised to the power of the second. Return nil if the
# second argument is negative. The ** operator has been disabled.

def power(base, exponent)
  return 1 if exponent == 0
  return nil if exponent < 0
  ([base] * exponent).reduce(:*)
end

# alternative

def power2(base, exponent)
  exponent.times.inject(1) { |a, _e| a * base } unless exponent < 0
end

# alternative using Math

def power3(base, exponent)
  return if exponent < 0
  sign = (base < 0 && base.odd? ? -1 : 1)
  sign * Math.exp(exponent * Math.log(base.abs)).round
end

p power(2, 3) # 8
p power(10, 0) # 1
p power(-5, 3) # -125
p power(-4, 2) # 16

# tests

# Test.assert_equals(power(2, 3), 8)
# Test.assert_equals(power(10, 0), 1)
# Test.assert_equals(power(-5, 3), -125)
# Test.assert_equals(power(-4, 2), 16)
