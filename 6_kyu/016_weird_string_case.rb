# 016_weird_string_case.rb
# http://www.codewars.com/kata/weird-string-case
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function weirdcase that accepts a string, and returns the same string
# with all even indexed characters in each word upper cased, and all odd
# indexed characters in each word lower cased. The indexing just explained is
# zero based, so the zero-ith index is even, therefore that character should
# be upper cased.

# The passed in string will only consist of alphabetical characters and
# spaces(' '). Spaces will only be present if there are multiple words.
# Words will be separated by a single space(' ').

# Weird string case
# WeIrD StRiNg CaSe
# 01234 012345 0123
# X-X-X X-X-X- X-X-

def weirdcase(string)
  words = string.split.map do |word|         # 1. extract the words
    letters = word.split('')                 # 2. extract the letters
    letters.each_index do |index|            # 3. iterate over each letter[i]
      letters[index].upcase! if index.even?  # 4. upcase the even letters
    end
    letters.join                             # 5. join the letters into words
  end
  words.join(' ')                            # 6. join the words into a string
end

# alternatives

def weirdcase2(string)
  string.gsub(/(\w{1,2})/) { |_s| $1.capitalize }
end

def weirdcase3(string)
  string.split(' ').map do |word|
    word.split('').each_with_index.map do |char, i|
      i.even? ? char.upcase : char.downcase
    end.join('')
  end.join(' ')
end

p weirdcase('String')             # => "StRiNg"
p weirdcase('Weird string case')  # => "WeIrD StRiNg CaSe"
