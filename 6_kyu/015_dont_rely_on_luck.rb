# 64_dont_rely_on_luck.rb
# http://www.codewars.com/kata/dont-rely-on-luck
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# The test fixture I use for this kata is pre-populated. It will compare your
# guess to a random number generated in Ruby by:

# (Kernel::rand() * 100 + 1).floor

# You can pass by relying on luck or skill but try not to rely on luck.
# "The power to define the situation is the ultimate power." - Jerry Rubin

guess = 11

# kernel hack
module Kernel
  def self.rand(max = 0)
    0.1
  end
end

lucky_number = (Kernel::rand() * 100 + 1).floor

# alternative

# srand 0
# guess = (rand * 100 + 1).floor
# srand 0

p guess
p lucky_number

# Test.assert_equals(guess, lucky_number, 'Sorry. Unlucky this time.')
