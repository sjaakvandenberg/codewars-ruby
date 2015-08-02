# 027_find_the_divisors.rb
# http://www.codewars.com/kata/find-the-divisors
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Create a function named divisors that takes an integer and returns an array
# with all of the integer's divisors(except for 1 and the number itself).
# If the number is prime return the string '(integer) is prime'.

# divisors(12); #should return [2,3,4,6]
# divisors(25); #should return [5]
# divisors(13); #should return "13 is prime"

def divisors(int)
  arr = []  # initialize empty array
  # add the divisors to the array
  (1..int).each { |i| int % i == 0 ? arr.push(i) : i.next }
  # check whether int is a prime
  if arr.include?(1) && arr.include?(int) && arr.length == 2
    "#{int} is prime"
  else  # otherwise, remove 1 and int from the array and return it
    arr.delete(1)
    arr.delete(int)
    arr
  end
end

# alternative

def divisors2(n)
  arr = (2...n).select { |i| n % i == 0}  # check for non-prime divisors
  arr.empty? ? "#{n} is prime" : arr      # check whether n is prime
end

p divisors2(12) # [2,3,4,6]
p divisors2(25) # [5]
p divisors2(13) # "13 is prime"
