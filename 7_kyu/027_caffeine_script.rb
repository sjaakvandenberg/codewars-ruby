# 38_caffeine_script.rb
# http://www.codewars.com/kata/caffeine-script
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the function `caffeine_buzz`, which takes a non-zero integer as
# its one argument.

# If the integer is divisible by 3, return the string "Java".
# If the integer is divisible by 3 and 4, return the string "Coffee".
# If the integer is divisible by 3 and is even, or divisible by 3 and
# 4 and is even, add "Script" to the end of the string.
# Otherwise, return the string "mocha_missing!"

# caffeine_buzz(1)  => "mocha_missing!"
# caffeine_buzz(3)  => "Java"
# caffeine_buzz(6)  => "JavaScript"
# caffeine_buzz(12) => "CoffeeScript"

def caffeine_buzz(n)
  if (n % 3 == 0) && (n % 4 == 0)
    string = 'Coffee'
    string += 'Script' if n.even?
  elsif n % 3 == 0
    string = 'Java'
    string += 'Script' if n.even?
  else
    string = 'mocha_missing!'
  end
  string
end

# alternative

def caffeine_buzz(n)
  str = ''
  str = 'Java' if n % 3 == 0
  str = 'Coffee' if n % 4 == 0 && n % 3 == 0
  return 'mocha_missing!' if str.empty?
  str += 'Script' if n.even?
  str
end

# alternative

def caffeine_buzz2(n)
  return 'CoffeeScript' if n % 12 == 0
  return 'JavaScript' if n % 6 == 0
  return 'Java' if n % 3 == 0
  'mocha_missing!'
end

p caffeine_buzz(1)
p caffeine_buzz(3)
p caffeine_buzz(6)
p caffeine_buzz(12)
