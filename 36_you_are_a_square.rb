# 36_you_are_a_square.rb
# http://www.codewars.com/kata/youre-a-square
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# A square of squares

# You like building blocks. You especially like building blocks that are
# squares. And what you like even more, is to arrange them into a square
# of square building blocks!

# However, sometimes, you can't arrange them into a square. Instead, you
# end up with an ordinary rectangle! Those blasted things! If you just
# had a way to know, whether you're currently working in vain... Wait!
# That's it! You just have to check if your number of building blocks is
# a _perfect square_.

# Task

# Given an integral number, determine if it's a square number:

# > In mathematics, a square number or perfect square is an integer that
# > is the square of an integer; in other words, it is the product of
# > some integer with itself.

# The test will _always_ use some integral number, so don't worry about
# that in dynamic typed languages.

# Examples

# is_square (-1) # => false
# is_square   3  # => false
# is_square   4  # => true
# is_square  25  # => true
# is_square  26  # => false

def square?(x)
  # compare the remainder of mod 1 to 0 and return false for exceptions
  Math.sqrt(x) % 1 == 0 rescue false
end

# alternative

def is_square(x)
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end

p square?(-1) # false
p square?(3)  # false
p square?(4)  # true
p square?(16) # true
p square?(25) # true
p square?(26) # false
p square?(17) # false

# describe "is_square" do
#   it "should work for some examples" do
#     Test.assert_equals (is_square (-1)), false, "-1 is not a perfect square"
#     Test.assert_equals (is_square  3),   false,  "3 is not a perfect square"
#     Test.assert_equals (is_square  4),    true,   "4 is a perfect square (2 * 2)"
#     Test.assert_equals (is_square 25),    true,  "25 is a perfect square (5 * 5)"
#     Test.assert_equals (is_square 26),   false, "26 is not a perfect square"
#   end
#   it "should work for random square numbers" do
#     for i in 1..100
#       l = Test.random_number() % 10000
#       Test.assert_equals(is_square(l*l), true)
#     end
#   end
# end
