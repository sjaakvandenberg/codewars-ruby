# 042_sort_numbers.rb
# http://www.codewars.com/kata/sort-numbers
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Finish the solution so that it sorts the passed in array of numbers. If the
# function passes in an empty array or null/nil value then it should return
# an empty array.

def solution(nums)
  # if nums is an empty array or nil, return an empty array
  # otherwise, sort the numbers
  nums == [] || nums.nil? ? [] : nums.sort
end

# alternatives

def solution2(nums)
  Array(nums).sort
end

def solution3(nums)
  nums ? nums.sort : []
end

p solution([1, 2, 10, 50, 5])  # [1, 2, 5, 10, 50]
p solution([-40, 500, -1.5, 3, 9, 1000])  # [-40, -1.5, 3, 9, 500, 1000]
p solution([])                 # []
p solution(nil)                # []

Test.assert_equals(solution([1, 2, 10, 50, 5]), [1, 2, 5, 10, 50])
Test.assert_equals(solution([-40, 500, -1.5, 3, 9, 1000]), [-40, -1.5, 3, 9, 500, 1000])
Test.assert_equals(solution([]), [])
Test.assert_equals(solution(nil), [])
Test.assert_not_equals(solution([]), nil)
Test.assert_not_equals(solution([]), nil)
