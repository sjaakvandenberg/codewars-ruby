# 049_iq_test.rb
# http://www.codewars.com/kata/iq-test
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Bob is preparing to pass an IQ test. The most frequent task in this test is
# to find out which one of the given numbers differs from the others. Bob
# observed that one number usually differs from the others in evenness. Help
# Bob to check his answers. He needs a program that among the given numbers
# finds one that is different in evenness, and return a position of this
# number.

# Keep in mind that your task is to help Bob solve a real IQ test, which means
# indexes of the elements start from 1 (not 0)

def iq_test(numbers)
  n = numbers.split(' ').map(&:to_i)     # convert to array of ints
  if n.count(&:even?) < n.count(&:odd?)  # find out dominant int type
    n.find_index(&:even?) + 1            # account for 0-index
  else
    n.find_index(&:odd?) + 1
  end
end

# alternative

def iq_test2(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end

p iq_test('2 4 7 8 10') # 3 (third number is odd, rest of the numbers are even)
p iq_test('1 2 1 1')    # 2 (second number is even, rest of the numbers are odd)
