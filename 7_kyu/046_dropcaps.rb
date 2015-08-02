# 046_dropcaps.rb
# http://www.codewars.com/kata/dropcaps
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# DropCaps means that the first letter of the starting word of the paragraph
# should be in caps and the remaining lowercase, same like you see in the
# newspaper.

# But for a change lets do that for each and every word of the given String.
# Your task is to capitalize very word that has length greater than 2,
# leaving smaller words as they are.

# drop_cap('apple') => "Apple"
# drop_cap('apple of banana'); => "Apple of Banana"

# Note: you will be provided atleast one word and should take string as
# input and return string as output.

# str > array
# for each item capitalize
# unless length > 2

def drop_cap(str)
  # Split string on word bounderies to account for trailing, leading and
  # multiple spaces. Then map the array and capitalize words longer than
  # 3 characters, then join them into a string again.
  str.split(/\b/).map { |w| w.length <= 2 ? w : w.capitalize }.join('')
end

# alternatives

def drop_cap2(str)
  str.gsub(/\w{3,}/) { |w| w.capitalize }
end

p drop_cap('apple')
p drop_cap('apple of banana')
p drop_cap('  apple of banana')
