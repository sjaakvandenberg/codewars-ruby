# 026_sum_of_pairs.rb
# http://www.codewars.com/kata/sum-of-pairs
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Given a list of integers and a single sum value, return the first two values
# (parse from the left) in order of appearance that add up to form the sum.

# sum_pairs([11, 3, 7, 5],         10)
#                ^--^      3 + 7 = 10
# == [3, 7]

# sum_pairs([4, 3, 2, 3, 4],         6)
#            ^-----^         4 + 2 = 6, indices: 0, 2 *
#               ^-----^      3 + 3 = 6, indices: 1, 3
#                  ^-----^   2 + 4 = 6, indices: 2, 4
# * entire pair is earlier, and therefore is the correct answer
# == [4, 2]

# sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)

# sum_pairs([10, 5, 2, 3, 7, 5],         10)
#                ^-----------^   5 + 5 = 10, indices: 1, 5
#                      ^--^      3 + 7 = 10, indices: 3, 4 *
# * entire pair is earlier, and therefore is the correct answer
# == [3, 7]

# Negative numbers and duplicate numbers can and will appear.

# NOTE: There will also be lists tested of lengths upwards of 10,000,000
#       elements. Be sure your code doesn't time out.

def sum_pairs(array, sum)
  h = {}
  i = 0
  array.each do |e|
    lookup = h[sum - e]
    lookup.nil? ? h[e] = i : (return [sum - e, e])
    i += 1
  end
  nil
end

# alternatives

require 'set'
def sum_pairs2(ints, s)
  seen = Set.new
  ints.each do |v|
    return [s - v, v] if seen.include?(s - v)
    seen << v
  end
  nil
end

def sum_pairs3(ints, s)
  res = nil
  looking = {}
  ints.each_with_index do |int, i|
    solution = s - int
    looking[int] = i unless looking[int]
    if looking[solution] && looking[solution] != i
      res = [solution, int]
      break
    end
  end
  res
end

def sum_pairs4(ints, s)
  seen = {}
  ints.each do |i|
    return [s - i, i] if seen[s - i]
    seen[i] = true
  end
  nil
end

p sum_pairs([11, 3, 7, 5], 10)        # [3, 7]    SUCCESS
p sum_pairs([4, 3, 2, 3, 4], 6)       # [4, 2]    SUCCESS
p sum_pairs([0, 0, -2, 3], 2)         # nil       SUCCESS
p sum_pairs([10, 5, 2, 3, 7, 5], 10)  # [3, 7]    SUCCESS
p sum_pairs([1, 4, 8, 7, 3, 15], 8)   # [1, 7]    SUCCESS
p sum_pairs([1, -2, 3, 0, -6, 1], -6) # [0, -6]   SUCCESS
p sum_pairs([20, -13, 40], -7)        # nil       SUCCESS
p sum_pairs([1, 2, 3, 4, 1, 0], 2)    # [1, 1]    SUCCESS
p sum_pairs([10, 5, 2, 3, 7, 5], 10)  # [3, 7]    SUCCESS
p sum_pairs([4, -2, 3, 3, 4], 8)      # [4, 4]    SUCCESS
p sum_pairs([0, 2, 0], 0)             # [0, 0]    SUCCESS
p sum_pairs([5, 9, 13, -3], 10)       # [13, -3]  SUCCESS
