# 023_bit_counting.rb
# http://www.codewars.com/kata/bit-counting
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that takes an unsigned int as input, and returns the number
# of bits that are equal to one in the binary representation of that number.

# Example: the binary representation of 1234 is 10011010010, so the function
# should return 5 in this case.

def count_bits(n)
  # 1. convert n to binary string
  # 2. convert the string to chars
  # 3. convert the chars to integers
  # 4. return the sum of the integers
  n.to_s(2).chars.map(&:to_i).reduce(:+)
end

# alternative

def count_bits2(n)
  n.to_s(2).count('1')
end

p count_bits(1234) # 5
