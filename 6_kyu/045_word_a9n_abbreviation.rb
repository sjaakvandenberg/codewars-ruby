# 045_word_a9n_abbreviation.rb
# http://www.codewars.com/kata/word-a9n-abbreviation/
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# The word i18n is a common abbreviation of internationalization the
# developer community use instead of typing the whole word and trying to
# spell it correctly. Similarly, a11y is an abbreviation of accessibility.

# Write a function that takes a string and turns any and all words within
# that string of length 4 or greater into an abbreviation following the
# same rules.

# Notes:

# A "word" is a sequence of alphabetical characters. By this definition, if
# there is a hyphen (eg. "elephant-ride"), this will produce two, one on
# either side (eg. "elephant" and "ride").

# The abbreviated version of the word should have the first letter, then
# the number of removed characters, then the last letter (eg. "e6t-r2e").

# words over 4 chars will be abbreviated
# internationalization > i18n
# accessibility > a11y
# elephant > e6t
# ride > r2e

class Abbreviator

  def self.abbreviate(str)
    str.gsub(/(\w{4,})/) { |word| word[0] + word[1...-1].size.to_s + word[-1] }
  end

end

p Abbreviator.abbreviate('internationalization')          # i18n
p Abbreviator.abbreviate('accessibility')                 # a11y
p Abbreviator.abbreviate('elephant')                      # e6t
p Abbreviator.abbreviate('ride')                          # r2e
p Abbreviator.abbreviate('banana')                        # b4a
p Abbreviator.abbreviate('double-barrel')                 # d4e-b4l
p Abbreviator.abbreviate('You, and I, should speak.')     # You, and I, s4d s3k.
p Abbreviator.abbreviate('double-barrel lizard king doc') # d4e-b4l l4d k2g doc
