# 038_hyper_sphere.rb
# http://www.codewars.com/kata/hyper-sphere
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# To pass this kata you are required to complete the function in_sphere?.
# You will be given an array of coordinates and a radius. The function
# should return true if the coordinates describe a point within the given
# radius of the origin ([0,0...0]). A point with no coordinates should
# return true. (In zero dimensions all points are the same point)

# In two dimensions the condition that any [x,y] coordinate lies in a
# circle is:-

# x^2 + y^2 <= radius^2

# This generalises to higher dimensions as follows.

# x_1^2 + x_2^2 + ... x_n^2 <= radius^2

def in_sphere?(coords, radius)
  return true if coords == [] # return true if no coords present
  return false if coords.compact == [] # return false for nil
  return true if coords.compact.map { |e| e**2 }.reduce(:+) <= radius**2
  false
end

# alternative

def in_sphere2?(coords, radius)
  coords.reduce(0) { |a, e| a + e * e } <= radius**2
end

p in_sphere?([0.5, 0.5], 1)   # true
p in_sphere?([5, 0.5], 1)     # false
p in_sphere?([nil, nil], 1)   # false
p in_sphere?([-5, 0.5], 1)    # false
p in_sphere?([0.5, -0.5], 1)  # true
