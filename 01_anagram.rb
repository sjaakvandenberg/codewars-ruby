# 01_anagram.rb
# http://www.codewars.com/kata/anagram-detection
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# An anagram is the result of rearranging the letters of a word to produce
# a new word.

# Examples:
# _foefet_ is an anagram of _toffee_
# _buckethead_ is an anagram of _deathcubek_

# The challenge is to write the function isAnagram to return true if the
# word `test` is an anagram of the word `original` and false otherwise.

def anagram?(word1, word2)
  word1.downcase.chars.sort == word2.downcase.chars.sort
end

p anagram?('creative', 'reactive')  # true
p anagram?('creativex', 'reactive') # false

# Test.expect(anagram?('Creative', 'Reactive'), 'The word Creative is an anagram of Reactive')
