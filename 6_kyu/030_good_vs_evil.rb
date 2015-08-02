# 030_good_vs_evil.rb
# http://www.codewars.com/kata/good-vs-evil
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Middle Earth is about to go to war. The forces of good will have many
# battles with the forces of evil. Different races will certainly be involved.
# Each race has a certain 'worth' when battling against others. On the side
# of good we have the following races, with their associated worth:

# Good:           Evil:
# ----------------------------
# Hobbits   1     Orcs      1
# Men       2     Men       2
# Elves     3     Wargs     2
# Dwarves   3     Goblins   2
# Eagles    4     Uruk Hai  3
# Wizards  10     Trolls    5
#                 Wizards  10

# Although weather, location, supplies and valor play a part in any battle, if
# you add up the worth of the side of good and compare it with the worth of
# the side of evil, the side with the larger worth will tend to win.

# Thus, given the count of each of the races on the side of good, followed by
# the count of each of the races on the side of evil, determine which side
# wins.

# Input:

# The function will be given two parameters. Each parameter will be a string
# separated by a single space. Each string will contain the count of each race
# on the side of good and evil.

# The first parameter will contain the count of each race on the side of good
# in the following order: Hobbits, Men, Elves, Dwarves, Eagles, Wizards.

# The second parameter will contain the count of each race on the side of evil
# in the following order: Orcs, Men, Wargs, Goblins, Uruk Hai, Trolls, Wizards.

# All values are non-negative integers. The resulting sum of the worth for each
# side will not exceed the limit of a 32-bit integer.

# Output:

# Return "Battle Result: Good triumphs over Evil" if good wins,
# "Battle Result: Evil eradicates all trace of Good" if evil wins, or
# "Battle Result: No victor on this battle field" if it ends in a tie.

def good_vs_evil(good, evil)
  g = good.split.map(&:to_i)
  gt = g[0] * 1 + g[1] * 2 + g[2] * 3 + g[3] * 3 + g[4] * 4 + g[5] * 10
  e = evil.split.map(&:to_i)
  et = e[0] * 1 + e[1] * 2 + e[2] * 2 + e[3] * 2 + e[4] * 3 + e[5] * 5 + e[6] * 10
  return 'Battle Result: No victor on this battle field' if gt == et
  return 'Battle Result: Good triumphs over Evil' if gt > et
  return 'Battle Result: Evil eradicates all trace of Good' if gt < et
end

# alternative

def good_vs_evil2(good, evil)
  goodtot = good.split(' ').zip([1, 2, 3, 3, 4, 10]).map { |a, b| a.to_i * b }.reduce(:+)
  eviltot = evil.split(' ').zip([1, 2, 2, 2, 3, 5, 10]).map { |a, b| a.to_i * b }.reduce(:+)
  if goodtot > eviltot
    'Battle Result: Good triumphs over Evil'
  elsif eviltot > goodtot
    'Battle Result: Evil eradicates all trace of Good'
  else
    'Battle Result: No victor on this battle field'
  end
end

p good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
p good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
p good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
