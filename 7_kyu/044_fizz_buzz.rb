# 044_fizz_buzz.rb
# http://www.codewars.com/kata/fizz-buzz
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Return an array containing the numbers from 1 to n, where n is the
# parametered value. n will never be less than 1.

# Replace certain values however if any of the following conditions are met:
# - if the value is a multiple of 3, replace with 'Fizz'
# - if the value is a multiple of 5, replace with 'Buzz'
# - if the value is a multiple of both 3 and 5, replace with 'FizzBuzz'

def fizzbuzz(n)
  (1..n).map do |num|
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 3 == 0
      'Fizz'
    elsif num % 5 == 0
      'Buzz'
    else
      num
    end
  end
end

# alternatives

def fizzbuzz2(n)
  (1..n).map do |x|
    y = ''
    y += 'Fizz' if x % 3 == 0
    y += 'Buzz' if x % 5 == 0
    y == '' ? x : y
  end
end

def fizzbuzz3(n)
  (1..n).map do |x|
    if x % 15 == 0
      'FizzBuzz'
    elsif x % 5 == 0
      'Buzz'
    elsif x % 3 == 0
      'Fizz'
    else
      x
    end
  end
end

p fizzbuzz(15)
p fizzbuzz2(15)
p fizzbuzz3(15)
