# 022_triangular_treasure.rb
# http://www.codewars.com/kata/triangular-treasure
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Triangular numbers are so called because of the equilateral triangular
# shape that they occupy when laid out as dots, i.e.

# 1st (1)    2nd (3)    3rd (6)
# *          **         ***
#            *          **
#                       *

# You need to return the nth triangular number. You should return
# 0 for out of range values.

# triangular(0) == 0
# triangular(2) == 3
# triangular(3) == 6
# triangular(-10) == 0

def triangular(n)
  n < 0 ? 0 : n * (n + 1) / 2
end

# alternative

def triangular2(n)
  (1..n).reduce(0, &:+)
end

p triangular(2) # 3
p triangular(4) # 10
p triangular(5) # 15
p triangular(6) # 21
p triangular(7) # 28
p triangular(8) # 28
p triangular(-8) # 0
p triangular(60) # 10
p triangular(845_376_324) # 357330565012564650
