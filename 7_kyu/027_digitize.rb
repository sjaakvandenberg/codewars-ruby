# 027_digitize.rb
# http://www.codewars.com/kata/digitize
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Given a non-negative integer, return an
# array of the individual digits in order.

# 123 => [1, 2, 3]
# 1 => [1]
# 8675309 => [8, 6, 7, 5, 3, 0, 9]

def digitize(n)
  n.to_s.each_char.to_a.map(&:to_i)
end

# alternative

def digitize2(n)
  n.to_s.chars.map(&:to_i)
end

p digitize(123)       # [1, 2, 3]
p digitize(1)         # [1]
p digitize(8_675_309) # [8, 6, 7, 5, 3, 0, 9]

# tests

Test.assert_equals(digitize(123), [1, 2, 3])
Test.assert_equals(digitize(1), [1])
Test.assert_equals(digitize(0), [0])
Test.assert_equals(digitize(8_675_309), [8, 6, 7, 5, 3, 0, 9])
Test.assert_not_equals(digitize(123), [nil])
Test.assert_not_equals(digitize(8_675_309), [8_675_309])
