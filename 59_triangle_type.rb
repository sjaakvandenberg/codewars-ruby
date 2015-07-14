# 59_triangle_type.rb
# http://www.codewars.com/kata/triangle-type
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In this kata, you should calculate type of triangle with three given sides
# `a`, `b` and `c` (given in any order). If all triangles are less than 90
# degrees, this triangle is `acute` and function should return 1. If one angle
# is strictly 90 degrees, this triangle is `right` and function should return 2.
# If one angle is more than 90 degress, this triangle is `obtuse` and function
# should return 3. If three sides cannot form a triangle, or one angle is 180
# degrees, function should return 0. Input parameters are `sides` of a given
# triangle. All input values are non-negative floating point or integer numbers
# (or both).

# Acute triangle
#                    A          a = 8
#                   /\          b = 5
#                  /  \         c = 7
#               b /    \ c
#                /      \
#               /        \
#              /__________\
#             C     a      B
#
# c**2 = a**2 + b**2 - 2 * a * b * cos(C)
# b**2 = a**2 + c**2 - 2 * a * c * cos(B)
# rad = deg * Math::PI / 180
# deg = rad * 180 / Math::PI

def triangle_angle(a, b, c)
  # determine the triangle's opposing angle
  Math.acos((b**2 + c**2 - a**2) / (2.0 * b * c)) * 180 / Math::PI
end

def triangle?(a, b, c)
  # check whether the sides can form a triangle
  a + b <= c || a + c <= b || c + b <= a ? false : true
end

def triangle_type(a, b, c)
  return 0 unless triangle?(a, b, c)    # triangle check
  arr = []
  angle_a = triangle_angle(b, c, a)
  angle_b = triangle_angle(c, b, a)
  angle_c = triangle_angle(a, b, c)
  arr.push(angle_a, angle_b, angle_c)
  return 1 if arr.all? { |x| x < 90 }   # acute triangle
  return 2 if arr.any? { |x| x == 90 }  # right triangle
  return 3 if arr.one? { |x| x > 90 }   # obtuse triangle
end

# alternatives

def triangle_type2(a, b, c)
  x, y, z = [a, b, c].sort
  return 0 if x + y <= z
  cs = x**2 + y**2 - z**2
  return 1 if cs > 0
  return 2 if cs == 0
  return 3 if cs < 0
  # cs == 0 ? 2 : (cs > 0 ? 1 : 3)
end

def triangle_type3(a, b, c)
  arr = [a, b, c].sort
  return 0 if arr[0] + arr[1] <= arr[2]
  arr.map! { |e| e * e }
  arr = arr[0] + arr[1] - arr[2]
  return 1 if arr > 0
  return 2 if arr == 0
  return 3 if arr < 0
end

p triangle_type2(7, 3, 2)   # 0 (not triangle)
p triangle_type2(2, 4, 6)   # 0 (not triangle)
p triangle_type2(8, 5, 7)   # 1 (acute)
p triangle_type2(3, 4, 5)   # 2 (right)
p triangle_type2(7, 12, 8)  # 3 (obtuse)
