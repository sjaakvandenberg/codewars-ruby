# 17_playing_with_digits.rb
# http://www.codewars.com/kata/playing-with-digits
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Some numbers have funny properties. For example:

# 89 --> 8^1 + 9^2 = 89 * 1
# 695 --> 6^2 + 5^4 = 1390 = 695 * 2
# 46288 --> 4^3 + 6^4 + 2^5 + 8^6 + 8^7 = 46288 * 51

# Give a positive integer written as abcd... (a, b, c, d... being digits) and
# a positive integer p we want to find a positive integer k, if it exists,
# such as the sum of the digits of n taken to the successive powers of p is
# equal to k * n. In other words:

# Is there an integer k such as: (a^p + b^(p+1) + c^(p+2) + d^(p+3) + ... n * k)

# If it is the case we will return k, if not return -1

# Note: n, p will always be given as strictly positive integers.

# dig_pow(89, 1) should return 1
#   since 8^1 + 9^2 = 89 = 89 * 1
# dig_pow(92, 1) should return -1
#   since there is no k such as 9^1 + 2^2 equals 92 * k
# dig_pow(695, 2) should return 2
#   since 6^2 + 9^3 + 5^4= 1390 = 695 * 2
# dig_pow(46288, 3) should return 51
#   since 4^3 + 6^4 + 2^5 + 8^6 + 8^7 = 2360688 = 46288 * 51

def dig_pow(n, k)
  sum = 0                     # reset sum
  n.to_s.each_char do |c|     # convert int to string and loop through chars
    sum += c.to_i**(k)        # convert each char to int, to the power of k
    k += 1                    # increment k with 1
  end
  sum % n == 0 ? sum / n : -1 # compare sum to existence of int
end

# alternatives

def dig_pow2(n, p)
  c = n.to_s.split('').each.with_index.inject(0) do |s, (v, i)|
    s + v.to_i**(p + i)
  end
  c % n != 0 ? -1 : c / n
end

p dig_pow(89, 1)      # 1
p dig_pow(92, 1)      # -1
p dig_pow(111, 1)     # -1
p dig_pow(46_288, 3)  # 51
