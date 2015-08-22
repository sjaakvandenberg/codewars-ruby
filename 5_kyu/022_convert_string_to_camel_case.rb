# 022_convert_string_to_camel_case.rb
# http://www.codewars.com/kata/convert-string-to-camel-case
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the method/function so that it converts dash/underscore delimited
# words into camel casing. The first word within the output should be
# capitalized only if the original word was capitalized.

def to_camel_case(str)
  first_letter = str[0]
  str.gsub!(/[\s_-]+[a-z]/) { |a| a.upcase }
  str.gsub!(/[\s_-]/, '')
  str[0].nil? ? nil : str[0] = first_letter
  str
end

# alternatives

def to_camel_case2(str)
  str.gsub(/[_-](.)/) { "#{$1.upcase}" }
end

def to_camel_case3(str)
  head, *tail = str.split(/[-_]/)
  head.to_s + tail.map(&:capitalize).join
end

def to_camel_case4(str)
  str.gsub(/[\W|_]+\w/) { |x| x[-1].upcase }
end

p to_camel_case('')                    # ''
p to_camel_case('warrior')             # 'warrior'
p to_camel_case('the-stealth-warrior') # 'theStealthWarrior'
p to_camel_case('The_Stealth_Warrior') # 'TheStealthWarrior'

# tests

# Test.assert_equals(to_camel_case('The-stealth-warrior'), 'theStealthWarrior')
# Test.assert_equals(to_camel_case('The_Stealth_Warrior'), 'TheStealthWarrior')
