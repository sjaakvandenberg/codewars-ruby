# 028_validate_credit_card_number.rb
# http://www.codewars.com/kata/validate-credit-card-number
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In this Kata, you will implement The Luhn Algorithm, which is used to help
# validate credit card numbers.

# Given a positive integer of up to 16 digits, return true if it is a valid
# credit card number, and false if it is not.

# Here is the algorithm:

# If there are an even number of digits, double every other digit starting
# with the first, and if there are an odd number of digits, double every other digit starting with the second. Another way to think about it is, from the right to left, double every other digit starting with the second to last digit.

# 1714 => [1*, 7, 1*, 4] => [2, 7, 2, 4]

# 12345 => [1, 2*, 3, 4*, 5] => [1, 4, 3, 8, 5]

# 891 => [8, 9*, 1] => [8, 18, 1]
# If a resulting doubled number is greater than 9, replace it with either the
# sum of it's own digits, or 9 subtracted from it.

# [8, 18*, 1] => [8, (1+8), 1] => [8, 9, 1]

# (or)

# [8, 18*, 1] => [8, (18-9), 1] => [8, 9, 1]
# Sum all of the final digits
# [8, 9, 1] => 8+9+1 => 18
# Finally, take that sum and divide it by 10. If the remainder equals zero,
# the original credit card number is valid.

# 18 (modulus) 10 => 8.

# 8 does not equal 0, so 891 is not a valid credit card number.

def validate(n)
  arr = n.to_s.chars.map { |e| e.to_i }
  if arr.length.even?
    # double the values for the even indexes (0, 2, 4, etc)
    arr2 = arr.map.with_index { |e, i| i.even? ? e * 2 : e }
    # subtract 9 if the value is over 9
    arr3 = arr2.map { |e| e > 9 ? e - 9 : e }
  else
    # double the values for the odd indexes (1, 3, 5, etc)
    arr2 = arr.map.with_index { |e, i| i.odd? ? e * 2 : e }
    # subtract 9 if the value is over 9
    arr3 = arr2.map { |e| e > 9 ? e - 9 : e }
  end
  # modulo 10 the sum of the array
  arr3.reduce(:+) % 10 == 0 ? true : false
end

# alternative

def validate2(n)
  n.to_s
    .split(//)
    .map(&:to_i)
    .reverse
    .map
    .with_index { |e, i| i.even? e : e * 2 }
    .reverse
    .map { |x| x > 9 : x }
    .reduce(&:+) % 10 == 0
end

# testing steps

# array     [1, 7, 1, 4]  [1, 2, 3, 4, 5]  [8, 9, 1, 3]
# even      true          false            true
# double    [2, 7, 2, 4]  [1, 4, 3, 8, 5]  [16, 9, 2, 3]
# subtract  [2, 7, 2, 4]  [1, 4, 3, 8, 5]  [7, 9, 2, 3]
# valid     false         false            true
# sum       15            21               30

p validate(1714)              # false
p validate(12345)             # false
p validate(8913)              # false
p validate(891)               # false
p validate(4024007175942035)  # true
p validate(5261823186502966)  # false
p validate(6759060928818230)  # true
p validate(675906092881829)   # false
p validate(4111111111111111)  # true

# tests

# Test.assert_equals(validate(1714), false)
# Test.assert_equals(validate(12345), false)
# Test.assert_equals(validate(8913), false)
# Test.assert_equals(validate(891), false)
# Test.assert_equals(validate(4024007175942035), true)
# Test.assert_equals(validate(5261823186502966), false)
# Test.assert_equals(validate(6759060928818230), true)
# Test.assert_equals(validate(675906092881829), false)
# Test.assert_equals(validate(4111111111111111), true)