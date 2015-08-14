# 041_n_th_fibonacci.rb
# http://www.codewars.com/kata/n-th-fibonacci
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# I love Fibonacci numbers in general, but I must admit I love some more
# than others. I would like for you to write me a function that when given
# a number (n) returns the n-th number in the Fibonacci Sequence.

# For example:
# nth_fibonacci(4) == 2
# Because 2 is the 4th number in the Fibonacci Sequence.

# For reference, the first two numbers in the Fibonacci sequence are 0 and
# 1, and each subsequent number is the sum of the previous two.

# 0, 1, 1, 2, 3, 5, 8, 13, 21

def nth_fibonacci(n)
  return 0 if n == 1
  sequence = [1]
  (n - 2).times do
    current_number, last_number = sequence.last(2)
    sequence << current_number + (last_number || 0)
  end

  sequence.last
end

# alternatives

def nth_fibonacci2(n)
  return 0 if n == 1
  return 1 if n == 2
  nth_fibonacci(n - 1) + nth_fibonacci(n - 2)
end

def nth_fibonacci3(n)
  n < 3 ? n - 1 : nth_fibonacci(n - 1) + nth_fibonacci(n - 2)
end

p nth_fibonacci(4) # 2

# tests

# Test.assert_equals(nth_fibonacci(1), 0)
# Test.assert_equals(nth_fibonacci(2), 1)
# Test.assert_equals(nth_fibonacci(3), 1)
# Test.assert_equals(nth_fibonacci(4), 2)
# Test.assert_equals(nth_fibonacci(5), 3)
# Test.assert_equals(nth_fibonacci(6), 5)
# Test.assert_equals(nth_fibonacci(7), 8)
# Test.assert_equals(nth_fibonacci(8), 13)
# Test.assert_equals(nth_fibonacci(9), 21)
