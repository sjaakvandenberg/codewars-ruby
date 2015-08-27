# 024_sort_arrays_3.rb
# http://www.codewars.com/kata/sort-arrays-3
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# This time the input is an array of course-ids that are formatted in the
# following way: name-yymm

# The return of the function shall first be sorted by yymm, then by the name
# (which varies in length).

def sortme(courses)
  courses.sort_by { |c| [c[/(.+)\-(\d{4})$/, 2], c[/(.+)\-(\d{4})$/, 1]] }
end

# alternative

def sortme2(courses)
  courses.sort_by { |a| a.split('-').reverse }
end

p sortme(%w(geo305-1501 maths101-1505 x-1501 cs50-1408 geo305-1505))

# Test.assert_equals(sortme(%w(geo305-1501 maths101-1505 x-1501 cs50-1408 geo305-1505)), ["cs50-1408", "geo305-1501", "x-1501", "geo305-1505", "maths101-1505"])
