# 003_grouped_by_commas.rb
# http://www.codewars.com/kata/grouped-by-commas
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Finish the solution so that it takes an input 'n' (integer) and returns
# a string that is the decimal representation of the number grouped by
# commas after every 3 digits.

# Assume 0 <= n < 1_000_000_000

#        1  ->           "1"
#       10  ->          "10"
#      100  ->         "100"
#     1000  ->       "1,000"
#    10000  ->      "10,000"
#   100000  ->     "100,000"
#  1000000  ->   "1,000,000"
# 35235235  ->  "35,235,235"

def solution(n)
  n.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

# alternative

def solution2(n)
  n.to_s.reverse.scan(/\d{1,3}/).join(',').reverse
end

p "1: #{solution(1)}"
p "10: #{solution(10)}"
p "100: #{solution(100)}"
p "1_005: #{solution(1_005)}"
p "10_000: #{solution(10_000)}"
p "100_000: #{solution(100_000)}"
p "1_000_000: #{solution(1_000_000)}"
p "35_235_235: #{solution(35_235_235)}"

Test.assert_equals(solution(1), '1', 'Error')
Test.assert_equals(solution(9), '9', 'Error')
Test.assert_equals(solution(10), '10', 'Error')
Test.assert_equals(solution(100), '100', 'Error')
Test.assert_equals(solution(1_000), '1,000', 'Error')
Test.assert_equals(solution(1_304), '1,304', 'Error')
Test.assert_equals(solution(100_000), '100,000', 'Error')
Test.assert_equals(solution(1_000_000), '1,000,000', 'Error')
Test.assert_equals(solution(35_235_235), '35,235,235', 'Error')
