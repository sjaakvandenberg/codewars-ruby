# 029_calculate_hypotenuse_of_right_angled_triangle.rb
# http://www.codewars.com/kata/calculate-hypotenuse-of-right-angled-triangle
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# To solve this Kata, complete the function, calculate_hypotenuse(a,b), which
# will return the length of the hypotenuse for a right angled triangle with
# the other two sides having a length equal to the inputs. More details:

# - The returned value should be a number rounded to three decimal places
# - An error should be thrown if an invalid input is provided (inputs should
#   both be numbers that are above zero)

# calculate_hypotenuse(1,1) # returns 1.414
# calculate_hypotenuse(3,4) # returns 5
# calculate_hypotenuse(-2,1) # raises exception
# calculate_hypotenuse("one", "two") # raises exception

# For more info: http://en.wikipedia.org/wiki/Hypotenuse

def calculate_hypotenuse(a, b)
  fail 'NaN' unless a.is_a?(Integer) && b.is_a?(Integer)
  fail 'Out of range' if (a | b) < 0
  Math.sqrt(a**2 + b**2).round(3)
end

# alternative

def calculate_hypotenuse2(a, b)
  Math.hypot(a, b).round(3)
end

p calculate_hypotenuse(1, 1) # 1.414
p calculate_hypotenuse(3, 4) # 5.0

# tests

# Test.assert_equals(calculate_hypotenuse(1, 1), 1.414)
# Test.assert_equals(calculate_hypotenuse(3, 4), 5.0)
