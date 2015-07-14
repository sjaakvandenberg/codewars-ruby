# 037_greet_me.rb
# http://www.codewars.com/kata/greet-me
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a method that takes one argument as name and then greets that
# name, capitalized and ends with an exclamation point.

def greet(name)
  "Hello #{name.capitalize}!"
end

p greet('Riley') # "Hello Riley!"
