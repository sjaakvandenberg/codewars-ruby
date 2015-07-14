# 31_disemvowel_trolls.rb
# http://www.codewars.com/kata/disemvowel-trolls
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Trolls are attacking your comment section!

# A common way to deal with this situation is to remove all of the vowels
# from the trolls' comments, neutralizing the threat.

# Your task is to write a function that takes a string and return a new
# string with all vowels removed.

# For example, the string "This website is for losers LOL!" would become
# "Ths wbst s fr lsrs LL!".

def disemvowel(str)
  str.gsub(/[aeiou]/i, '')
end

# alternative

def disemvowel2(str)
  str.delete('aeiouAEIOU')
end

p disemvowel('This website is for losers LOL!') # "Ths wbst s fr lsrs LL!"
