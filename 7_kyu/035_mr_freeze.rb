# 035_mr_freeze.rb
# http://www.codewars.com/kata/mr-freeze
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# There is an object/class already created called MrFreeze. Mark this
# object as frozen so that no other changes can be made to it.

MrFreeze.freeze

p MrFreeze.frozen? # true

# test

Test.assert_equals(MrFreeze.frozen?, true)