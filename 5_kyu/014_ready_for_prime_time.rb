# 014_ready_for_prime_time.rb
# http://www.codewars.com/kata/ready-for-prime-time
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# We need prime numbers and we need them now!

# Write a method that takes a maximum bound and returns all primes starting
# with 0 up-to and including the maximum bound.

def prime(max)
  (1..max).select { |x| (1..max).count { |y| x % y == 0 } == 2 }
end

# alternative

def prime2(n)
  (2..n).reject do |i|
    (2...i).any? { |o| i % o == 0 }
  end
end

p prime(12) # [2, 3, 5, 7, 11]

# tests

# Test.assert_equals(prime(11), [2, 3, 5, 7, 11])
# Test.assert_equals(prime(12), [2, 3, 5, 7, 11])
# Test.assert_equals(prime(13), [2, 3, 5, 7, 11, 13])
