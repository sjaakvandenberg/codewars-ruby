# 044_split_strings.rb
# http://www.codewars.com/kata/split-strings
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the solution so that it splits the string into pairs of two
# characters. If the string contains an odd number of characters then it
# should replace the missing second character of the final pair with an
# underscore ('_').

def solution(str)
  str.scan(/.{1,2}/).map { |e| e[1].nil? ? e + '_' : e }
end

# alternative

def solution(str)
  (str + '_').scan(/../)
end

p solution('abc')     # ['ab', 'c_']
p solution('abcdef')  # ['ab', 'cd', 'ef']

# tests

# Test.assert_equals(solution('abc'), ['ab', 'c_'])
# Test.assert_equals(solution('abcdef'), ['ab', 'cd', 'ef'])
