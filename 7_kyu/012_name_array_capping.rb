# 012_name_array_capping.rb
# http://www.codewars.com/kata/name-array-capping
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Create a method that accepts an array of naes, and returns an array of each
# name with its first letter capitalized.

# cap_me(['jo', 'nelson', 'jurie']) # returns ['Jo', 'Nelson', 'Jurie']
# cap_me(['KARLY', 'DANIEL', 'KELSEY']) # returns ['Karly', 'Daniel', 'Kelsey']

def cap_me(arr)
  arr.map(&:capitalize)
end

p cap_me(%w(jo nelson jurie))      # ["Jo", "Nelson", "Jurie"]
p cap_me(%w(KARLY DANIEL KELSEY))  # ["Karly", "Daniel", "Kelsey"]
p cap_me(%w(KARLY danIEL jO))

Test.assert_equals(cap_me(%w(jo nelson jurie)), %w(Jo Nelson Jurie), 'Error')
Test.assert_equals(cap_me(%w(KARLY DANIEL KELSEY)), %w(Karly Daniel Kelsey), 'Error')
Test.assert_equals(cap_me(%w(KARLY danIEL jO)), %w(Karly Daniel Jo), 'Error')
