# 047_counting_duplicates.rb
# http://www.codewars.com/kata/counting-duplicates
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Count the number of Duplicates

# Write a function that will return the count of distinct case-insensitive
# alphabetic characters that occur more than once in the given string. The
# given string can be assumed to contain only uppercase and lowercase alphabets.

def duplicate_count(str)
  str.downcase.each_char.find_all { |c| str.downcase.count(c) > 1 }.uniq.size
end

# alternative

def duplicate_count2(str)
  ('a'..'z').count { |c| str.downcase.count(c) > 1 }
end

p duplicate_count('abcde')            # 0 (no characters repeats more than once)
p duplicate_count('aabbcde')          # 2 ('a' and 'b')
p duplicate_count('aabbcdeB')         # 2 ('a' and 'b')
p duplicate_count('indivisibility')   # 1 ('i')
p duplicate_count('Indivisibilities') # 2 ('i' and 's')
