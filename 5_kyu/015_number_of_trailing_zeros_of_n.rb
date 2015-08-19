# 015_number_of_trailing_zeros_of_n.rb
# http://www.codewars.com/kata/number-of-trailing-zeros-of-n
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a program that will calculate the number of trailing zeros in a
# factorial of a given number.

# N! = 1 * 2 * 3 * 4 ... N

# zeros(12) = 2 # 1 * 2 * 3 .. 12 = 479001600
# that has 2 trailing zeros 4790016(00)
# Be careful 1000! has length of 2568 digital numbers.

runs = 1_000

def zeros1(n) # 11 ms
  product = 1
  zeros = 0
  (1..n).each { |x| product *= x }
  arr = product.to_s.chars
  while arr.last == '0'
    arr.pop
    zeros += 1
  end
  zeros
end

def zeros2(n) # 10 ms
  (1..n).reduce(:*).to_s.match(/0*$/)[0].length
end

def zeros3(n) # 20 ms
  l = (1..n).reduce(:*).to_s.length
  z = (1..n).reduce(:*).to_s =~ /0*$/
  l - z
end

def zeros4(n) # 10 ms
  factorial = (1..n).reduce(:*).to_s
  factorial.length - (factorial =~ /0*$/)
end

def zeros5(n) # 25E-3 ms
  x = 5
  counter = 0
  while n / x >= 1
    counter += n / x
    x *= 5
  end
  counter
end

def zeros6(n) # 90E-3 ms
  return 0 if n.zero?
  k = (Math.log(n) / Math.log(5)).to_i
  m = 5**k
  n * (m - 1) / (4 * m)
end

# other alternatives

def zeros7(n) # 17E-3 ms
  zeros = 0
  zeros += n /= 5 while n >= 1
  zeros
end

def zeros8(n) # 22E-3 ms
  n < 5 ? 0 : (n / 5) + zeros8(n / 5)
end

# Runs -----------------------------------------------------------------------

puts "Runs: #{runs}"
puts '----------------------------'

# Method 1 -------------------------------------------------------------------

start = Time.now

runs.times do
  zeros1(3)
  zeros1(12)
  zeros1(100)
  zeros1(256)
  zeros1(512)
  zeros1(1024)
  zeros1(2048)
  zeros1(4096)
end

puts "M1 average : #{((Time.now - start) / runs) * 1_000} ms"

# Method 2 -------------------------------------------------------------------

start = Time.now

runs.times do
  zeros2(3)
  zeros2(12)
  zeros2(100)
  zeros2(256)
  zeros2(512)
  zeros2(1024)
  zeros2(2048)
  zeros2(4096)
end

puts "M2 average : #{((Time.now - start) / runs) * 1_000} ms"

# Method 3 -------------------------------------------------------------------

start = Time.now

runs.times do
  zeros3(3)
  zeros3(12)
  zeros3(100)
  zeros3(256)
  zeros3(512)
  zeros3(1024)
  zeros3(2048)
  zeros3(4096)
end

puts "M3 average : #{((Time.now - start) / runs) * 1_000} ms"

# Method 4 -------------------------------------------------------------------

start = Time.now

runs.times do
  zeros4(3)
  zeros4(12)
  zeros4(100)
  zeros4(256)
  zeros4(512)
  zeros4(1024)
  zeros4(2048)
  zeros4(4096)
end

puts "M4 average : #{((Time.now - start) / runs) * 1_000} ms"

# Method 5 -------------------------------------------------------------------

start = Time.now

runs.times do
  zeros5(3)
  zeros5(12)
  zeros5(100)
  zeros5(256)
  zeros5(512)
  zeros5(1024)
  zeros5(2048)
  zeros5(4096)
end

puts "M5 average : #{((Time.now - start) / runs) * 1_000} ms"

# Method 6 -------------------------------------------------------------------

start = Time.now

runs.times do
  zeros6(3)
  zeros6(12)
  zeros6(100)
  zeros6(256)
  zeros6(512)
  zeros6(1024)
  zeros6(2048)
  zeros6(4096)
end

puts "M6 average : #{((Time.now - start) / runs) * 1_000} ms"

# Method 7 -------------------------------------------------------------------

start = Time.now

runs.times do
  zeros7(3)
  zeros7(12)
  zeros7(100)
  zeros7(256)
  zeros7(512)
  zeros7(1024)
  zeros7(2048)
  zeros7(4096)
end

puts "M7 average : #{((Time.now - start) / runs) * 1_000} ms"

# Method 8 -------------------------------------------------------------------

start = Time.now

runs.times do
  zeros8(3)
  zeros8(12)
  zeros8(100)
  zeros8(256)
  zeros8(512)
  zeros8(1024)
  zeros8(2048)
  zeros8(4096)
end

puts "M8 average : #{((Time.now - start) / runs) * 1_000} ms"

# output:

# Runs: 1000
# ----------------------------
# M1 average : 11.671612507 ms
# M2 average : 10.635933567 ms
# M3 average : 19.765613989 ms
# M4 average : 10.383485152 ms
# M5 average : 0.002345771 ms
# M6 average : 0.008333559 ms
# M7 average : 0.001652617 ms
# M8 average : 0.002220366 ms

# tests

# Test.assert_equals(zeros(3), 0)
# Test.assert_equals(zeros(12), 2)
# Test.assert_equals(zeros(100), 24)
# Test.assert_equals(zeros(256), 63)
# Test.assert_equals(zeros(512), 126)
