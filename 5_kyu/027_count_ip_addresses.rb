# 027_count_ip_addresses.rb
# http://www.codewars.com/kata/count-ip-addresses
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that accepts a starting and ending IPv4 address, and
# returns the number of IP addresses from start to end, excluding the end IP
# address. All input to the ipsBetween function will be valid IPv4 addresses
# in the form of strings. The ending address will be at least one address
# higher than the starting address.

def ips_between(first, last)
  a = first.scan(/\d+/).map(&:to_i)
  b = last.scan(/\d+/).map(&:to_i)
  c = a.zip(b).map { |x, y| y - x }
  c[0] * 256**3 + c[1] * 256**2 + c[2] * 256 + c[3]
end

# alternative using `ipaddr`

require 'ipaddr'
def ips_between2(start, ending)
  IPAddr.new(ending).to_i - IPAddr.new(start).to_i
end

# alterantive using lambda

def ips_between3(start, ending)
  ip_to_int = ->(x) { x.split('.').reduce(0) { |a, e| a * 256 + e.to_i } }
  ip_to_int.call(ending) - ip_to_int.call(start)
end

p ips_between('10.0.0.0', '10.0.0.50')  # 50
p ips_between('10.0.0.0', '10.0.1.0')   # 256
p ips_between('20.0.0.10', '20.0.1.0')  # 246
p ips_between('10.0.0.0', '10.0.0.255') # 255
p ips_between('10.0.0.0', '10.0.0.1')   # 1
p ips_between('10.0.0.0', '10.0.1.0')   # 256
p ips_between('10.0.0.0', '10.1.0.0')   # 65536
p ips_between('10.0.0.0', '10.1.1.1')   # 65793
