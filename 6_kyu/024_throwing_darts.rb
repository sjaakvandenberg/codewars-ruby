# 024_throwing_darts.rb
# http://www.codewars.com/kata/throwing-darts
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# You've just recently been hired to calculate scores for a Dart Board game!

# Scoring specifications:
# 0 points - radius above 10
# 5 points - radius between 5 and 10 inclusive
# 10 points - radius less than 5

# If all radiuses are less than 5, award 100 BONUS POINTS!

# Write a function that accepts an array of radiuses (can be integers and/or
# floats), and returns a total score using the above specification.
# An empty array should return 0.

# 3x <5  =? 100 points
# < 5    =>  10 points
# 5 - 10 =>   5 points
# 10 +   =>   0 points

def score_throws(radiuses)
  score = radiuses.map do |radius|
    if radius > 10    # for a radius above 10, award 0 points
      0
    elsif radius < 5  # for a radius less than 5, award 10 points
      10
    else              # for a radius between 5 and 10 inclusive, award 5 points
      5
    end
  end
  # if all radiuses are under 5 (10 points), award an extra 100 points
  score.count(10) >= radiuses.length ? score.reduce(:+) + 100 : score.reduce(:+)
end

# alternative with nested ternary operator

def score_throws2(radiuses)
  # iterate through the radiuses and award points:
  # - 0 points for a radius of 10 or more
  # - 5 points for a radius between 5 and 10
  # - 10 points for a radius under 5
  score = radiuses.map { |x| x < 5 ? 10 : x > 10 ? 0 : 5 }
  # if all radiuses are under 5 (10 points), award an extra 100 points
  score.count(10) >= radiuses.length ? score.reduce(:+) + 100 : score.reduce(:+)
end

p score_throws([1, 5, 11])          # => returns 15
p score_throws([15, 20, 30])        # => returns 0
p score_throws([1, 2, 3, 4])        # => returns 140
p score_throws([0, 0, 0, 0])        # => returns 140
p score_throws([3.5, 2.5, 1.5, 7])  # => returns 35
p score_throws([5, 10, 10, 10])     # => returns 20
p score_throws([10, 10, 10, 10])    # => returns 20
p score_throws([15, 15, 15, 15])    # => returns 0
p score_throws([25, 25, 25, 25])    # => returns 0
