# 003_valid_parentheses.rb
# http://www.codewars.com/kata/valid-parentheses
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function called validParentheses that takes a string of parentheses,
# and determines if the order of the parentheses is valid. validParentheses
# should return true if the string is valid, and false if it's invalid.

# validParentheses( "()" ) => returns true
# validParentheses( ")(()))" ) => returns false
# validParentheses( "(" ) => returns false
# validParentheses( "(())((()())())" ) => returns true

# All input strings will be nonempty, and will only consist of open
# parentheses '(' and/or closed parentheses ')'

def valid_parentheses?(str)
  while str.gsub!(/\([^()]*\)/, ''); end
  !(str.include?('(') || str.include?(')'))
end

# alternative

def valid_parentheses2?(str)
  open = 0
  str.chars.each do |c|
    open += 1 if c == '('
    open -= 1 if c == ')'
    return false if open < 0
  end
  open == 0
end

p valid_parentheses?('()')        # true
p valid_parentheses?('())')       # false
p valid_parentheses?('()')        # true
p valid_parentheses?('()')        # true
p valid_parentheses?('  (')       # false
p valid_parentheses?(')test')     # false
p valid_parentheses?('')          # true
p valid_parentheses?('hi())(')    # false
p valid_parentheses?('hi(hi)()')  # true
