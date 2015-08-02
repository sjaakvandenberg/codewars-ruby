# 025_array_helpers.rb
# http://www.codewars.com/kata/array-helpers
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# This kata is designed to test your ability to extend the functionality of
# built-in ruby classes. In this case, we want you to extend the built-in
# Array class with the following methods: square(), cube(), average(), sum(),
# even() and odd().

# Explanation:
# ------------
# - square() must return a copy of the array, containing all values squared,
#   the original array must not be changed
# - cube() must return a copy of the array, containing all values cubed,
#   the original array must not be changed
# - average() must return the average of all array values,
#   average() on an empty array must return NaN
# - sum() must return the sum of all array values
# - even() must return an array of all even numbers,
#   the original array must not be changed
# - odd() must return an array of all odd numbers,
#   the original array must not be changed

numbers = [1, 2, 3, 4, 5]

class Array

  def square
    map { |num| num * num }
  end

  def cube
    map { |num| num**3 }
  end

  def average
    empty? ? 'NaN' : reduce(:+) / length
    # alternative:
    # sum / size
  end

  def sum
    reduce(:+)
  end

  def even
    select { |num| num % 2 == 0 }
  end

  def odd
    select { |num| num % 2 != 0 }
  end

end

p numbers.square  # [1, 4, 9, 16, 25]
p numbers.cube    # [1, 8, 27, 64, 125]
p numbers.average # 3
p [].average      # 'NaN'
p numbers.sum     # 15
p numbers.even    # [2, 4]
p numbers.odd     # [1, 3, 5]

# tests

# Test.assert_equals([1, 2, 3, 4, 5].square, [1, 4, 9, 16, 25])
# Test.assert_equals([1, 2, 3, 4, 5].cube, [1, 8, 27, 64, 125])
# Test.assert_equals([1, 2, 3, 4, 5].average, 3)
# Test.assert_equals([].average, 'NaN')
# Test.assert_equals([1, 2, 3, 4, 5].sum, 15)
# Test.assert_equals([1, 2, 3, 4, 5].even, [2, 4])
# Test.assert_equals([1, 2, 3, 4, 5].odd, [1, 3, 5])
