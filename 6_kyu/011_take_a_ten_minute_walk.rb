# 60_take_a_ten_minute_walk.rb
# http://www.codewars.com/kata/take-a-ten-minute-walk
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# You live in the city of Cartesia where all roads are laid out in a perfect
# grid. You arrived ten minutes too early to an appointment, so you decided to
# take the opportunity to go for a short walk. The city provides its citizens
# with a Walk Generating App on their phones -- everytime you press the button
# it sends you an array of one-letter strings representing directions to walk
# (e.g. ['n', 's', 'w', 'e']). You know it takes you one minute to traverse one
# city block, so create a function that will return `true` if the walk app
# gives you a route that will take exactly ten minutes (you don't want to be
# early or late!) and will, of course, return you to your starting point.
# Return false otherwise.

def valid_walk?(walk)
  n = walk.count('n')
  e = walk.count('e')
  s = walk.count('s')
  w = walk.count('w')
  # The sum of the blocks walked should equal 10, and to get back to
  # the starting point, north and south, and east and west should be equal
  n + e + s + w == 10 && n == s && e == w ? true : false
end

# alternative

def valid_walk2?(walk)
  walk.count('w') == walk.count('e') &&
    walk.count('n') == walk.count('s') &&
    walk.count == 10
end

p valid_walk?(%w(n s n s n s n s n s))      # true
p valid_walk?(%w(w e w e w e w e w e w e))  # false
p valid_walk?(%w(w))                        # false
p valid_walk?(%w(n n n s n s n s n s))      # false
