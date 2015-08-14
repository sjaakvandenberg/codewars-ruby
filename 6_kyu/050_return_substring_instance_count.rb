# 050_return_substring_instance_count.rb
# http://www.codewars.com/kata/return-substring-instance-count
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the solution so that it returns the number of times
# the search_text is found within the full_text.

def solution(full_text, search_text)
  sum = 0
  full_text.scan(/#{search_text}/) { |_match| sum += 1 }
  sum
end

# alternative

def solution(full_text, search_text)
  full_text.scan(search_text).size
end

p solution('aa_bb_cc_dd_bb_e', 'bb')  # 2 (bb shows up twice)
p solution('aaabbbcccc', 'bbb')       # 1

# tests

Test.assert_equals(solution('aa_bb_cc_dd_bb_e', 'bb'), 2)
Test.assert_equals(solution('aaabbbcccc', 'bbb'), 1)
