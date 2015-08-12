# 035_sort_arrays_ignoring_case.rb
# http://www.codewars.com/kata/sort-arrays-ignoring-case
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Simple sort, but this time sort regardless of upper / lower case.

# ["Hello", "there", "I'm", "fine"] -> ["fine", "Hello", "I'm", "there"]

def sortme(strings)
  strings.sort_by(&:downcase)
end

p sortme(['Hello', 'there', "I'm", 'fine'])

# Test.assert_equals(sortme(['Hello', 'there', "I'm", 'fine']), ["fine", "Hello", "I'm", "there"])
