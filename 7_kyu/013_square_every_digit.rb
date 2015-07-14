# 013_square_every_digit.rb
# http://www.codewars.com/kata/square-every-digit
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# square_digits(9119) # => 811181

def square_digits(n)
  n.to_s.chars.map { |i| i.to_i**2 }.join.to_i
end

p square_digits(9119) # 811181
p square_digits(3212) # 9414
p square_digits(2112) # 4114
p square_digits(1111) # 1111
p square_digits(1_234_321) # 14916941
p square_digits(0) # 0
