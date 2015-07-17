# 018_function_composition.rb
# http://www.codewars.com/kata/function-composition
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Function composition is a mathematical operation that mainly presents itself
# lambda calculus and computability.

# f3 = compose(f1 f2)
# is equivalent to
# f3(a) = f1(f2(a))

# Your task is to create a `compose` function to carry out this task, which
# will be passed two functions or lambdas. Ruby functions will be passed, and
# should return, either a proc or a lambda. Remember that the resulting
# composed function may be passed multiple arguments!

# compose(f, g).(x) # => f.(g.(x))
