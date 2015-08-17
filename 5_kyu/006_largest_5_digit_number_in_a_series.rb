# 006_largest_5_digit_number_in_a_series.rb
# http://www.codewars.com/kata/largest-5-digit-number-in-a-series
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In the following 6 digit number: 283910,
# 91 is the greatest sequence of 2 digits.

# Complete the solution so that it returns the largest five digit number found
# within the number given... The number will be passed in as a string of only
# digits. It should return a five digit integer. The number passed may be as
# large as 1000 digits.

def solution(digits)
  sets = []
  arr = digits.to_s.chars.map(&:to_i)
  while arr != []
    sets += arr.each_slice(5).to_a
    arr.delete_at(0)
  end
  sets.reject! { |e| e.length != 5 }.map { |e| e.join.to_i }.max
end

# alternatives

def solution2(digits)
  digits.split('').each_cons(5).max.join.to_i
end

def solution3(digits)
  (0..digits.length).collect { |i| digits[i, 5].to_i }.max
end

# alternative using regex

def solution4(digits)
  digits.scan(/\d{5}/).max.to_i
end

p solution('12345678901234567890') # 90123
p solution('98743273762987432836873257863217129836532') # 98743

# tests

# Test.assert_equals(solution(12_345_678_901_234_567_890), 90123)
# Test.assert_equals(solution(98_743_273_762_987_432_217_129_836_532), 98743)
