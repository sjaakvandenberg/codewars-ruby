# 025_candy_problem.rb
# http://www.codewars.com/kata/candy-problem
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# We have a bunch of kids in the list/array and there is shown how much candy
# each kid has. Because we don't want kids to argue, we want each kid to have
# the same amount of candies, but we can't take candies from kids.

# Your job is to give all the kids the same amount of candies as the kid with
# the most candies and then return the total number candies that have been
# given out. If there are no kids, or 1, return -1. In the first case the most
# candies are given to second kid, 8. Because of that we will give the first
# kid 3, the third kid 2 and the fourth kid 4, so all kids will have 8 candies.

# Together we will give out 3 + 2 + 4 = 9 candies, that is why function returns
# 9. In the last case you do the same. You see that the second kid has 6
# candies so we need to give the first kid 5 candies.

def candies(arr)
  sum = 0            # reset the sum
  if arr.length > 1  # if the array contains more than 1 element
    # sum up the elements' differences with the max value
    arr.each { |e| sum += arr[arr.index(arr.max)] - e }
    sum              # return the sum
  else               # if the array contains 1 or fewer elements
    -1               # return -1
  end
end

# alternative

def candies2(s)
  return -1 if s.size <= 1
  s.inject(0) { |sum, n| sum + (s.max - n) }
end

p candies([5, 8, 6, 4])        # 9
p candies([1, 2, 4, 6])        # 11
p candies([])                  # 0
p candies([1, 6])              # 5
p candies([2, 4, 6, 8, 5, 3])  # 20
