# 13_collatz_conjecture_length.rb
# http://www.codewars.com/kata/collatz-conjecture-length
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# The Collatz Conjecture states that for any natural number n, if n is even,
# divide it by 2. If n is odd, multiply it by 3 and add 1. If you repeat The
# process continuously for n, n will eventually reach 1.

# For example, if n = 20, the resulting sequence will be:

# [20, 10, 5, 16, 8, 4, 2, 1]

# Write a program that will output the length of the Collatz Conjecture for
# any given n. In the example above, the output would be 8.

# rule 1: even? n / 2
# rule 2: odd?  n * 3 + 1
# rule 3: stop at n = 1

# collatz(20) => 8

def collatz(n)
  i = 1               # reset i
  while n > 1         # keep looping until n reaches 1
    if n.even?        # if n is an even number
      n = n /= 2      # divide n by 2
    else              # if n id an odd number
      n = 3 * n + 1   # multiply by 3 and add 1
    end
    i += 1            # increment n by 1
  end
  i                   # return i
end

# alternative

def collatz2(n)
  counter = 1
  while n != 1
    n = n.even? ? n / 2 : n * 3 + 1
    counter += 1
  end
  counter
end

p collatz(20) # 8
p collatz(15) # 18
