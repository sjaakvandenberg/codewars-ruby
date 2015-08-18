# 010_convert_pascalcase_into_snake_case.rb
# http://www.codewars.com/kata/convert-pascalcase-string-into-snake-case
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the function/method so that it takes CamelCase string and returns
# the string in snake_case notation. Lowercase characters can be numbers.
# If method gets number, it should return string.

def to_underscore(str)
  return str.to_s if str.is_a?(Numeric)
  str.gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
    .gsub(/([a-z\d])([A-Z])/, '\1_\2')
    .tr('-', '_').downcase
end

# alternative

def to_underscore2(string)
  string.to_s.split(/(?=[A-Z])/).join('_').downcase
end

p to_underscore('TestController') # test_controller
p to_underscore('MoviesAndBooks') # movies_and_books
p to_underscore('App7Test')       # app7_test
p to_underscore(1)                # 1

# tests

# Test.assert_equals(to_underscore('TestController'), 'test_controller')
# Test.assert_equals(to_underscore('MoviesAndBooks'), 'movies_and_books')
# Test.assert_equals(to_underscore('App7Test'), 'app7_test')
# Test.assert_equals(to_underscore(-34), '-34')
