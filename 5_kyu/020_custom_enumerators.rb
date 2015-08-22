# 020_custom_enumerators.rb
# http://www.codewars.com/kata/custom-enumerators-fibonacci
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Ruby has very powerful enumerator support, including the ability to create
# your own custom enumerators on the fly.

# digits = Enumerator.new do |y|
#   i = 0
#   loop do
#     y.yield i
#     i += 1
#   end
# end

# digits.next # => 0
# digits.next # => 1

# digits.take_while { |n| n < 13} # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

# Create an enumerator "fib" that outputs successive fibonacci numbers.

# For example:

# fib.next # => 1
# fib.next # => 1
# fib.next # => 2

# fib.take_while { |n| n < 100} # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
# NOTE: The first value returned from the enumerator will be 1, not 0

fib = Enumerator.new do |yielder|
  i = 0
  j = 1
  loop do
    i, j = j, i + j
    yielder << i
  end
end

8.times do
  print "#{fib.next} " # 1 1 2 3 5 8 13 21
end

puts

p fib.take_while { |n| n < 100 } # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

# tests

Test.assert_equals(fib.take_while { |n| n < 100 }, [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
Test.assert_equals(fib.next, 1)
Test.assert_equals(fib.next, 1)
Test.assert_equals(fib.next, 2)
Test.assert_equals(fib.next, 3)
Test.assert_equals(fib.next, 5)
Test.assert_equals(fib.next, 8)
