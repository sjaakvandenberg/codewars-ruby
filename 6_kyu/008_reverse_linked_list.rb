# 008_reverse_linked_list.rb
# http://www.codewars.com/kata/reverse-linked-list
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Let's say we have a single linked list. Empty is represented by null.
# Non-empty list is represented by 2-element array [value, tail].

# List with values 1, 2, 3 is represented as `[1, [2, [3, null]]]`.

# Develop a function reverse_list which returns elements of the given
# list in reverse order, without modification of the original list.

def reverse_list(list)
  list.reverse_each { |x| x }
end

p reverse_list([1, [2, [3]]])
# p reverse_list([[1,2], [3,4], [5,6]])
