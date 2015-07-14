# 61_ipv4_to_int32.rb
# http://www.codewars.com/kata/ipv4-to-int32
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Take the following IPv4 address: 128.32.10.1. This address has 4 octets
# where each octet is a single byte (or 8 bits).

# - 1st octet 128 has the binary representation: 10000000
# - 2nd octet 32 has the binary representation: 00100000
# - 3rd octet 10 has the binary representation: 00001010
# - 4th octet 1 has the binary representation: 00000001

# So 128.32.10.1 == 10000000.00100000.00001010.00000001

# Because the above IP address has 32 bits, we can represent it as the 32 bit number: 2149583361.

# Write a function ip_to_int32(ip) that takes an IPv4 address and returns a 32 bit number.

# ip_to_int32("128.32.10.1") => 2149583361

# 128 = 10000000
#  32 = 00100000
#  10 = 00001010
#   1 = 00000001
#
#       10000000001000000000101000000001 =
#       2^31 + 2^21 + 2^11 + 2^9 + 2^0 =
#       2147483648 + 2097152 + 2048 + 512 + 1 =
#       2149583361
#
# '10000000001000000000101000000001'.to_s(2) = 2149583361

def ip_to_int32(ip)
  # 1. Split the IPv4 address, using `.` as the delimiter
  # 2. Format each element in the array to 8 bit binary
  # 3. Join the binary strings together and
  #    convert them to a 32 bit integer number
  ip.split('.').map { |s| format('%08b', s) }.join.to_i(2)
end

# alternative

def ip_to_int32b(ip)
  ip.split('.').reduce(0) { |a, e| a * 256 + e.to_i }
end

p ip_to_int32('128.32.10.1') # => 2149583361
