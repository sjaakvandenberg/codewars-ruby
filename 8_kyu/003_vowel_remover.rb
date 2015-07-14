# 003_vowel_removed.rb
# http://www.codewars.com/kata/vowel-remover
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# create a function called `shortcut()` to remove all the lowercase vowels
# shortcut("codewars") # => cdwrs
# shortcut("goodbye")  # => gdby

def shortcut(s)
  # substitude vowels using regex
  s.gsub(/[aeiou]/, '')
end

p shortcut('codewars')
p shortcut('goodbye')
