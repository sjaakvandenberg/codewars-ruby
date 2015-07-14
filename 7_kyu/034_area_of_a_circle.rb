# 034_area_of_a_circle.rb
# http://www.codewars.com/kata/area-of-a-circle
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the function `circle_area` so that it will return the area of a
# circle with the given `radius`. Round the returned number to two decimal
# places. If the radius is not positive or not a number, return false.

def circle_area(r)
  pi = 3.14159265358
  # return false if r is a string or less then or equal to 0
  # otherwise, use pi * r^2 to calculate the area of a circle
  # rounded down to 2 decimals
  r.class == String || r <= 0 ? false : (pi * r**2).round(2)
end

# alternative

def circle_area2(r)
  return false if r.to_i <= 0
  (Math::PI * (r**2)).round(2)
end

p circle_area(1485.86)  # => false
p circle_area(0)        # => false
p circle_area('number') # => false
p circle_area(43.2673)  # => false
p circle_area(68)       # => false
