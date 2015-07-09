# 40_vowel_count.rb
# http://www.codewars.com/kata/vowel-count
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Return the number (count) of vowels in the given string.
# We will consider a, e, i, o, and u as vowels for this Kata.

def get_count(str)
  str.to_s.downcase.count('aeiou')
end

# alternative

def get_count2(str)
  str.scan(/[aeiou]/i).size
end

p get_count('abracadabra')
p get_count('jdjsalkljdsajoimcxano')
p get_count('ooioioioioio')
p get_count('qwerty')
p get_count(24_398)

# tests

# Test.assert_equals(get_count('abracadabra'), 5)
# Test.assert_equals(get_count('jdjsalkljdsajoimcxano'), 6)
# Test.assert_equals(get_count('ooioioioioio'), 12)
# Test.assert_equals(get_count('qwerty'), 1)
# Test.assert_equals(get_count(24_398), 0)
