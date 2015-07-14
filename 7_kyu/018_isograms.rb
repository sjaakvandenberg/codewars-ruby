# 018_isograms.rb
# http://www.codewars.com/kata/isograms
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# An isogram is a word that has no repeating letters, consecutive or
# non-consecutive. Implement a function that determines whether a string
# that contains only letters is an isogram. Assume the empty string is an
# isogram. Ignore letter case.

# is_isogram("Dermatoglyphics") == true
# is_isogram("aba") == false
# is_isogram("moOse") == false

def isogram?(string)
  ary = string.split('').map(&:downcase) # convert string to downcased array
  ary == ary.uniq ? true : false         # return true if it contains duplicates
end

# alternative

def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end

p isogram?('Dermatoglyphics') # true
p isogram?('aba') # false
p isogram?('moOse') # false
