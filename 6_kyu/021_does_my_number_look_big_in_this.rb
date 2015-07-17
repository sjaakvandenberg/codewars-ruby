# 021_does_my_number_look_big_in_this.rb
# http://www.codewars.com/kata/does-my-number-look-big-in-this
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# A Narcissistic Number is a number which is the sum of its own digits, each
# raised to the power of the number of digits.

# For example, take 153 (3 digits).
# 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# And 1634:
# 1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

# Your code must return true or false depending upon whether the given number
# is a Narcissistic number. Error checking for text strings or other invalid
# inputs is not required, only valid integers will be passed.

def narcissistic?(number)
  exp = number.to_s.length   # the length of the number is the exponent
  chars = number.to_s.chars  # the characters in the number
  # compare number to the sum of the integers of
  # each character to the power of the exponent
  number == chars.map { |char| char.to_i**exp }.reduce(:+).to_i
end

# alternative

def narcissistic2?(number)
  sum = 0                              # reset the sum
  number.to_s.chars.each do |n|        # iterate over the chars in number
    sum += n.to_i**number.to_s.length  # sum the product of the exponents
  end
  number == sum                        # compare the result with number
end

p narcissistic?(7_432_632)
p narcissistic?(153)
p narcissistic?(1634)
