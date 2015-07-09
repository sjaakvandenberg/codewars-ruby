# 35_unpacking_arguments.rb
# http://www.codewars.com/kata/unpacking-arguments
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# You must create a function, `spread`, that takes a function and a list of
# arguments to be applied to that function. You must make this funciton
# return the result of calling the given funciton/lambda with the given
# arugments.

# spread some_function, [1, true, "Foo", "bar"]
# is the same as some_function.(1, true, "Foo", "bar")

# [x] create a function that take multiple arguments
# [ ] create a function that takes a string and an array of parameters

def spread(func, *args)
  func.call(args)
end

def call_something(function_name)
  function_name
end

def say
  puts 'Hi from the say method!'
end

def some_function(*args)
  puts "Hi #{args[0..-2].join(', ')} and #{args.last}!"
end

# print some_function('a', 'b', 'c', 'd')
# print some_function('monkey', 'donkey', 'duck', 'goose')

# p spread(some_function, ['monkey', 'donkey'])
# print some_function.call('a', 'b', 'c', 'd')
# print spread some_function, %w(a b c d)

call_something(say)
