# 25_sum_first_nth_term.rb
# http://www.codewars.com/kata/sum-of-the-first-nth-term-of-series
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Your task is to write a function which returns the sum of following series
# upto nth term (parameter).

# Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16

# Rules:
# - you need to round the answer up to 2 decimal places and return it as String
# - if the given value is 0 then it should return 0.00
# - you will only be given natural numbers as arguments

# Examples:
# series_sum(1) = 1 = "1"
# series_sum(2) = 1 + 1/4 = "1.25"
# series_sum(3) = 1 + 1/4 + 1/7 = "1.39"
# series_sum(5) = 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"

def series_sum(n)
  sum = 0
  # (0..n).to_a.each_with_index { |e, i| p e; p "i: #{i * e}" }
  # sum
  (1..n).inject{|sum, x| sum + 1.0 / x ** 2}
end

p series_sum(3)

=begin
0   1         2         3
1 + 1/4 +     1/7       1/10
1   1/(1n+3)  1/(2n+3)  1/(2+3)


   x ^ k     |x| < 1      1/(1-x)
k=0 to inf


1     2     3     4     5
1     1/4   1/7   1/10  1/13
n+0   n+2   n+4   n+6   n + 8

[0]   [1]   [2]   [3]   [4]
1     1/4   1/7   1/10  1/13

1/    1/    1/    1/    1/
n+1   n+3   n+5   n+7   n+8

2n+1
=end
