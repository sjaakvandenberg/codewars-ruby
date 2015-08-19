# 016_delta_bits.rb
# http://www.codewars.com/kata/delta-bits
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function convert_bits to determine the number of bits required to
# convert positive integer A to positive integer B.

# For example, you can change 31 to 14 by flipping the 4th and 0th bit:

#  31  0 0 0 1 1 1 1 1
#  14  0 0 0 0 1 1 1 0
# ---  ---------------
# bit  7 6 5 4 3 2 1 0

# Thus 31 and 14 should return 2.

def convert_bits(a, b)
  flips = 0
  format('%0100b', a).chars.each_with_index do |e, i|
    flips += 1 if e != format('%0100b', b)[i]
  end
  flips
end

# alternative

def convert_bits2(a, b)
  (a ^ b).to_s(2).count('1')
end

p convert_bits(31, 14) # 2
p convert_bits(11, 55) # 4
p convert_bits(25, 99) # 5
