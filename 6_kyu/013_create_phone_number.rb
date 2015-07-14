# 62_create_phone_number.rb
# http://www.codewars.com/kata/create-phone-number
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that accepts an array of integers (between 0 and 9), that
# returns a string of those numbers in the form of a phone number.

# phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # (123) 456-7890

def phone_number(numbers)
  "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
end

# alternative

def phone_number2(numbers)
  format('(%d%d%d) %d%d%d-%d%d%d%d', *numbers)
end

p phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
p phone_number2([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
