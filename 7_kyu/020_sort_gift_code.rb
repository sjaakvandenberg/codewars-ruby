# 020_sort_gift_code.rb
# http://www.codewars.com/kata/sort-the-gift-code
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Santa's senior gift organizer Elf developed a way to represent up to 26 gifts
# by assigning a unique alphabetical character to each gift. After each gift
# was assigned a character, the gift organizer Elf then joined the characters
# to form the gift ordering code.

# Santa asked his organizer to order the characters in alphabetical order, but
# the Elf fell asleep from consuming too much hot chocolate and candy canes!
# Can you help him out?

# Sort the Gift Code

# Write a function called `sortGiftCode` (`sort_gift_code` in Ruby) that
# accepts a string containing up to 26 unique alphabetical characters, and
# returns a string containing the same characters in alphabetical order.

# Examples:
# sort_gift_code('abcdef') #=> returns 'abcdef'
# sort_gift_code('pqksuvy') #=> returns 'kpqsuvy'
# sort_gift_code('zyxwvutsrqponmlkjihgfedcba') #=> returns 'abcdefghijklmnopqrstuvwxyz'

def sort_gift_code(code)
  code.downcase.chars.sort.join
end

p sort_gift_code('abcdef') #=> returns 'abcdef'
p sort_gift_code('pqksuvy') #=> returns 'kpqsuvy'
p sort_gift_code('zyxwvutsrqponmlkjihgfedcba') #=> returns
