# 004_partial_word_searching.rb
# http://www.codewars.com/kata/partial-word-searching
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a method that will search an array for all strings that contain
# another string, ignoring capitalization. Then return an array of the
# found strings.

# The method takes two parameters, the query string and the array of
# strings to search, and returns an array.

# If the string isn't contained in any of the strings in the array, the
# method returns an array containing a single string: "Empty".

# Example: If the string to search for is "me", and the array to search
# is ["home", "milk", "Mercury", "fish"], the method should return
# ["home", "Mercury"].

a = ['elf', 'bog creature', 'bee ', 'milk', 'FROGS']

def find_word2(s, arr)
  result = arr.select { |e| /#{s}/i =~ e }
  result.any? ? result : ['Empty']
end

p find_word2('og', a)  # 'bog creature', 'FROGS'
p find_word2('MIL', a) # 'milk'
p find_word2(' ', a)   # 'bog creature', 'bee '
p find_word2('26', a)  # 'Empty'
