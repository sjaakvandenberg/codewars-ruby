# 007_twisted_sum.rb
# http://www.codewars.com/kata/twisted-sum
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Find the sum of the digits of all the numbers from 1 to N (both ends included).
# For N = 10 the sum is 1+2+3+4+5+6+7+8+9+(1+0) = 46
# For N = 11 the sum is 1+2+3+4+5+6+7+8+9+(1+0)+(1+1) = 48
# For N = 12 the sum is 1+2+3+4+5+6+7+8+9+(1+0)+(1+1)+(1+2) = 51

def solution(n)
  sum = 0             # reset the sum
  (1..n).each do |i|  # iterate through the numbers
    if i < 10         # if the number has only one digit
      sum += i        # sum up the numbers
    else              # if the number has more digits
      # convert the integer to a string, iterate through them
      # sum up each number after converting it back to an integer
      i.to_s.each_char { |c| sum += c.to_i }
    end
  end
  sum # return the sum
end

# alternative

def solution2(n)
  (1..n).to_a.join.chars.map(&:to_i).reduce :+
end

p solution(6) # 1 + 2 + 3 + 4 + 5 + 6 = 21
p solution(12) # 1 + 2 + 3 + ... + (1 + 0) + (1 + 1) + (1 + 2) = 51

Test.assert_equals(solution(6), 21)
Test.assert_equals(solution(10), 46)
Test.assert_equals(solution(11), 48)
Test.assert_equals(solution(12), 51)
