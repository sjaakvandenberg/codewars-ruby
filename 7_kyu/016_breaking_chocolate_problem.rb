# 016_breaking_chocolate_problem.rb
# http://www.codewars.com/kata/breaking-chocolate-problem
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Your task is to split the chocolate bar of given dimension `n` x `m` into
# small squares. Each square is of size 1x1 and unbreakable. Implement a
# function that will return minimum number of breaks needed.

# For example if you are given a chocolate bar of size `2` x `1` you can split
# it to single squares in just one break, but for size `3` x `1` you must do
# two breaks.

# If input data is invalid you should return 0 (as in no breaks are needed if
# we do not have any chocolate to split). Input will always be a non-negative
# integer.

def break_chocolate(n, m)
  !/\A\d+\z/.match(n.to_s) || !/\A\d+\z/.match(m.to_s) || n == 0 || m == 0 ? 0 : n * m - 1
end

# alternative solution

def break_chocolate2(n, m)
  n == 0 || m == 0 ? 0 : n * m - 1
end

p break_chocolate(5, 5)       # 24
p break_chocolate(7, 4)       # 27
p break_chocolate('duck', 4)  # 0
p break_chocolate(3, true)    # 0
p break_chocolate(0, 0)    # 0
