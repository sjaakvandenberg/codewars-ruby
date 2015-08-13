# 040_does_array_x_contain_all_values_within_array_y.rb
# http://www.codewars.com/kata/does-array-x-contain-all-values-within-array-y
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# We want to extend the array class so that it provides a contains_all?
# method. This method will always assume that an array is passed in and
# will return true if all values within the passed in array are present
# within the current array.

# For example:
# items = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# items.contains_all?([1, 2, 3]) # should == true
# items.contains_all?([1, 5, 13]) # should == false because 13 is not
#                                   within the items array

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

class Array

  def contains_all?(other_array)
    self & other_array.sort == other_array.sort ? true : false
  end

end

# alternative

class Array
  def contains_all2?(other_array)
    (other_array - self).size == 0
  end
end

p arr.contains_all?([1, 2, 3])       # true
p arr.contains_all?([0, 2, 4])       # false
p arr.contains_all?([5, 8])          # true
p arr.contains_all?([1, 5, 13])      # false
p arr.contains_all?([9, 2, 5, 4, 6]) # true

# tests

# Test.assert_equals([1, 2, 3, 4, 5].contains_all?([1, 2, 3]), true)
# Test.assert_equals([1, 2, 3, 4, 5].contains_all?([0, 2, 4]), false)
# Test.assert_equals([1, 2, 3, 4, 5].contains_all?([2, 5]), true)
# Test.assert_equals([1, 2, 3, 4, 5].contains_all?([1, 5, 13]), false)
# Test.assert_equals([1, 2, 3, 4, 5].contains_all?([nil]), false)
