# 004_repeat_it.rb
# http://www.codewars.com/kata/repeatit
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# take in a `string` and a `number` and return the `string` `number` times
def repeat_it(string, number)
  if string.class == String
    string * number
  else
    return 'Not a string'
  end
end

puts repeat_it('*', 3)
puts repeat_it('Hello', 11)
puts repeat_it(7, 11)
puts repeat_it(false, 2)
