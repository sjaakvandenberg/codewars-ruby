# 11_complete_the_pattern.rb
# http://www.codewars.com/kata/complete-the-pattern-number-1
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# You have to write a function pattern which creates
# the following pattern upto n number of rows.

# - if the argument is 0 or a negative integer, it should return ''

# 1
# 22
# 333
# ....
# .....
# nnnnnn

def pattern(n)
  # take an array from 1 to n and print each element
  # the amount of times of the value of that element
  # join the output elements with newline characters
  (1..n).map { |num| num.to_s * num }.join("\n")
end

pattern(-6) # ''
pattern(0)  # ''
pattern(1)  # '1'
pattern(2)  # '1\n22'
pattern(5)  # '1\n22\n333\n4444\n55555'
