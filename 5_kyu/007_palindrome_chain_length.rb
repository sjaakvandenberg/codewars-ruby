# 007_palindrome_chain_length.rb
# http://www.codewars.com/kata/palindrome-chain-length
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Number is a palindrome if it is equal to the number with digits in reversed
# order. For example, 5, 44, 171, 4884 are palindromes and 43, 194, 4773 are
# not palindromes.

# Write a method palindrome_chain_length which takes a positive number and
# returns the number of special steps needed to obtain a palindrome. The
# special step is: "reverse the digits, and add to the original number".
# If the resulting number is not a palindrome, repeat the procedure with the
# sum until the resulting number is a palindrome.

# If the input number is already a palindrome, the number of steps is 0.

# Input will always be a positive integer.

# For example, start with 87:

# 87 + 78 = 165;
# 165 + 561 = 726;
# 726 + 627 = 1353;
# 1353 + 3531 = 4884

# 4884 is a palindrome and we needed 4 steps to obtain it,
# so palindrome_chain_length(87) == 4

def palindrome_chain_length(n)
  arr = [n]
  arr.push(arr.last + arr.last.to_s.reverse.to_i) until palindrome?(arr.last)
  arr.length - 1
end

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

# alternatives

def palindrome_chain_length2(n)
  n.to_s == n.to_s.reverse ? 0 : 1 + palindrome_chain_length(n + n.to_s.reverse.to_i)
end

def palindrome_chain_length3(n)
  step = 0
  num  = n

  while num.to_s != num.to_s.reverse
    num += num.to_s.reverse.to_i
    step += 1
  end

  step
end

p palindrome_chain_length(87) # 4
# p palindrome?(4884) # true
# p palindrome?(4883) # false
