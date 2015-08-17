# 001_greed_is_good.rb
# http://www.codewars.com/kata/greed-is-good
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Greed is a dice game played with five six-sided dice. Your mission, should you
# choose to accept it, is to score a throw according to these rules. You will
# always be given an array with five six-sided dice values.

# Three 1's => 1000 points
# Three 6's =>  600 points
# Three 5's =>  500 points
# Three 4's =>  400 points
# Three 3's =>  300 points
# Three 2's =>  200 points
# One   1   =>  100 points
# One   5   =>   50 point
# A single die can only be counted once in each roll. For example, a "5" can
# only count as part of a triplet (contributing to the 500 points) or as a
# single 50 points, but not both in the same roll.

# Example scoring

# Throw       Score
# ---------   ------------------
# 5 1 3 4 1   50 + 2 * 100 = 250
# 1 1 1 3 1   1000 + 100 = 1100
# 2 4 4 5 4   400 + 50 = 450

def score(dice)
  hash = Hash.new(0)
  score = 0
  dice.each { |key| hash[key] += 1 }
  hash.each do |key, value|
    if key == 1
      score += 100 * (value % 3)
      score += 1000 * (value / 3)
    elsif key == 5
      score += 50 * (value % 3)
      score += 500 * (value / 3)
    else
      score += key * 100 * (value / 3)
    end
  end
  score
end

# alternative

def score(dice)
  score = 0
  (1..6).each do |i|
    counter = dice.select { |n| n == i }
    score =+ (i == 1 ? 1000 : i * 100) if counter.size >= 3
    score += (counter.size % 3) * 100 if i == 1
    score += (counter.size % 3) * 50 if i == 5
  end
  score
end

p score([2, 3, 4, 6, 2]) # 0
p score([2, 2, 2, 3, 3]) # 200
p score([5, 1, 3, 4, 1]) # 250
p score([1, 1, 1, 3, 1]) # 1100
p score([2, 4, 4, 5, 4]) # 450
p score([1, 1, 5, 1, 5, 4, 4, 4]) # 1500
