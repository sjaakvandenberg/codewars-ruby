# 040_converting_integer_to_currency.rb
# http://www.codewars.com/kata/converting-integer-to-currency-format
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a funciton that takes an integer in input and outputs a string with
# currency format.

# Integer in currency format is expressed by a string of numbers where every
# three digits are separated by a comma.

# Example:

# 123456 -> '123,456'

# Input will always be a positive integer, so don't worry about type checking
# or negative/float values.

def to_currency(int)
  # 1. convert to string
  # 2. convert string to array of characters
  # 3. reverse the array
  # 4. slice it up into parts of 3 long
  # 5. join the elements together
  # 6. use commas as delimiters
  # 7. reverse it back
  int.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(',').reverse
end

# alternatives

def to_currency2(int)
  int.to_s.reverse.gsub(/(d{3})(?=\d)/, '\\1,').reverse
end

def to_currency3(int)
  int.to_s.reverse.scan(/.{1,3}/).join(',').reverse
end

def to_currency4(int)
  a = int % 1000
  if (number / 1000) > 0
    return "#{number / 1000},#{a}"
  else
    return "#{a}"
  end
end

p to_currency(123456) # "123,456"
p to_currency(999999999) # "999,999,999"
