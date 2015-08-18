# 009_break_camelcase.rb
# http://www.codewars.com/kata/break-camelcase
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the solution so that the function will break up camel casing,
# using a space between words.

def solution(str)
  str.gsub(/([A-Z])/, ' \1')
end

p solution('camelCasing') # 'camel Casing'

# tests

# Test.assert_equals(solution('camElCasIng'), 'cam El Cas Ing')
# Test.assert_equals(solution('donaldDuck'), 'donald Duck')
