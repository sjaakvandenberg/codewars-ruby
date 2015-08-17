# 002_least_common_multiple.rb
# http://www.codewars.com/kata/least-common-multiple
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that calculates the least common multiple of its arguments;
# each argument is assumed to be a non-negative integer.

def lcm(*args)
  args.reduce(&:lcm)
end

p lcm(2, 4)     # 4
p lcm(2, 5)     # 10
p lcm(2, 3, 4)  # 12
p lcm(9)        # 9
p lcm(0)        # 0
p lcm(0, 1)     # 0
