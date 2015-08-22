# 018_no_modulo.rb
# http://www.codewars.com/kata/no-modulo
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Your goal is to write the solution method, which should return the result
# of applying the 'modulo 16' operation to any given positive integer.

# The following methods (among many others) have been disabled: Fixnum#+,
# Fixnum#-, Fixnum#*, Fixnum#/, Fixnum#%, Fixnum#divmod, Fixnum#fdiv,
# Fixnum#modulo, Fixnum#to_f, Fixnum#to_s

def solution(n)
  return 10 if format('%x', n) == 'a'
  return 11 if format('%x', n) == 'b'
  return 12 if format('%x', n) == 'c'
  return 13 if format('%x', n) == 'd'
  return 14 if format('%x', n) == 'e'
  return 15 if format('%x', n) == 'b'
  Integer(format('%x', n).chars.last)
end

# alternative

def solution2(n)
  n & 15
end

p solution(4)  # => 4
p solution(16) # => 0
p solution(18) # => 2
p solution(36) # => 4

# tests

# Test.assert_equals(solution(4), 4)
# Test.assert_equals(solution(16), 0)
# Test.assert_equals(solution(18), 2)
# Test.assert_equals(solution(36), 4)
# Test.assert_equals(solution(81), 1)
