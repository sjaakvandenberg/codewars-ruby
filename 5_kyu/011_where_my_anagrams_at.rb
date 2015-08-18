# 011_where_my_anagrams_at.rb
# http://www.codewars.com/kata/where-my-anagrams-at
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# What is an anagram? Well, two words are anagrams of each other if they both
# contain the same letters. For example:

# 'abba' & 'baab' == true
# 'abba' & 'bbaa' == true
# 'abba' & 'abbba' == false

# Write a function that will find all the anagrams of a word from a list. You
# will be given two inputs a word and an array with words. You should return
# an array of all the anagrams or an empty array if there are none.

def anagrams(word, words)
  words.select { |w| word.downcase.split('').sort == w.downcase.split('').sort }
end

# alternative

def anagrams2(word, words)
  words.select { |w| w.chars.sort == word.chars.sort }
end

p anagrams('abba', %w(aabb abcd bbaa dada)) # ['aabb', 'bbaa']
p anagrams('racer', %w(crazer carer racar caers racer)) # ['carer', 'racer']
p anagrams('laser', %w(lazing lazy lacer)) # []

# tests

Test.assert_equals(anagrams('abba', %w(aabb abcd bbaa dada)), ['aabb', 'bbaa'])
Test.assert_equals(anagrams('racer', %w(crazer carer racar caers racer)), ['carer', 'racer'])
Test.assert_equals(anagrams('laser', %w(lazing lazy lacer)), [])
