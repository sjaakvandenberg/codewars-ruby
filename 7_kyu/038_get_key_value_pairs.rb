# 038_get_key_value_pairs.rb
# http://www.codewars.com/kata/get-key-slash-value-pairs-as-arrays
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a method that takes one argument as name and then greets that
# name, capitalized and ends with an exclamation point.

# Complete the `keys_and_values` function so that it takes in an object
# and arrays.

# Example:

# keys_and_values({a: 1, b: 2, c: 3}) # [[:a, :b, :c], [1, 2, 3]]

def keys_and_values(data)
  arr = []
  arr[0] = []
  arr[1] = []
  data.each do |k, v|
    arr[0] << k
    arr[1] << v
  end
  arr
end

# alternative

def keys_and_values2(data)
  [data.keys, data.values]
end

def keys_and_values3(data)
  data.to_a.transpose
end

p keys_and_values({ a: 1, b: 2, c: 3 })

# test

# Test.assert_equals(keys_and_values({ a: 1, b: 2, c: 3 }), [[:a, :b, :c], [1, 2, 3]])
