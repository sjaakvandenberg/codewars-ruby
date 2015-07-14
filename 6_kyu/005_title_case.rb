# 22_title_case.rb
# http://www.codewars.com/kata/title-case
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# A string is considered to be in title case if each word in the string is
# either (a) capitalized (that is, only the first letter of the word is in
# upper case) or (b) considered to be an exception and put entirely into
# lower case unless it is the first word, which is always capitalized.

# Write a function that will convert a string into title case, given an
# optional list of exceptions (minor words). The list of minor words will
# be given as a string with each word separated by a space. Your function
# should ignore the case of the minor words string -- it should behave in
# the same way even if the case of the minor word string is changed.

# First argument (required): the original string to be converted.
# Second argument (optional): space-delimited list of minor words that
# must always be lowercase except for the first word in the string

# Example:

# title_case('a clash of KINGS', 'a an the of')
# should return: 'A Clash of Kings'
# title_case('THE WIND IN THE WILLOWS', 'The In')
# should return: 'The Wind in the Willows'
# title_case('the quick brown fox')
# should return: 'The Quick Brown Fox'

# we have two arrays, %w(a b c d) and %w(c d e f)
# we want to capitalize the strings that occur in both arrays %w(c d)
# %w(a b c d) - %w(c d e f) = %(c d)

def title_case(title, minor_words = '')
  # capitalize all words in the original title, split them up into
  # an array and check the elements against the minor_words array
  # if they match, return the word, otherwise capitalize them
  proper_title = title.capitalize.split.map do |word|
    minor_words.downcase.split.include?(word) ? word : word.capitalize
  end
  proper_title.join(' ') # join the elements of the array into a string
end

p title_case('', '')                              # ""
p title_case('a clash of KINGS', 'a an the of')   # "A Clash of Kings"
p title_case('THE WIND IN THE WILLOWS', 'the in') # "The Wind in the Willows"
p title_case('THE WIND IN THE WILLOWS', 'The In') # "The Wind in the Willows"
p title_case('the quick brown fox')               # "The Quick Brown Fox"
p title_case('First a of in', 'an often into')    # "First A Of In"

p title_case('A B C d e', 'a D C')                # A B c d E
