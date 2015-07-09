# 41_list_filtering.rb
# http://www.codewars.com/kata/list-filtering
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In this kata you will create a function that takes a list of non-negative
# integers and strings and returns a new list with the strings filtered out.

# filter_list([1, 2, 'a', 'b']) == [1, 2]
# filter_list([1, 'a', 'b', 0, 15]) == [1, 0, 15]
# filter_list([1, 2, 'aasf', '1', '123', 123]) == [1, 2, 123]

def filter_list(l)
  l.reject { |e| e.is_a? String }
end

# alternative

def filter_list2(l)
  l.select { |e| e.is_a? Integer }
end

p filter_list([1, 2, 'a', 'b'])                 # [1, 2]
p filter_list([1, 'a', 'b', 0, 15])             # [1, 0, 15]
p filter_list([1, 2, 'aasf', '1', '123', 123])  # [1, 2, 123]
