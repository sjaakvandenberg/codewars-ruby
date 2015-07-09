# 45_nato_phonetic_alphabet.rb
# http://www.codewars.com/kata/nato-phonetic-alphabet
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In this kata, we're going to create the function nato that takes a word
# and returns a string spells the word using the NATO phonetic alphabet.

# There should be a space between each word in the returned string,
# and the first letter of each word should be capitalized.

# For those of you that don't want your fingers to bleed, this kata
# already has a dictionary typed out for you.

# nato("Banana") # == "Bravo Alpha November Alpha November Alpha"

def nato(word)
  letters = {
    'A' => 'Alpha',   'B' => 'Bravo',    'C' => 'Charlie',    'D' => 'Delta',
    'E' => 'Echo',    'F' => 'Foxtrot',  'G' => 'Golf',       'H' => 'Hotel',
    'I' => 'India',   'J' => 'Juliett',  'K' => 'Kilo',       'L' => 'Lima',
    'M' => 'Mike',    'N' => 'November', 'O' => 'Oscar',      'P' => 'Papa',
    'Q' => 'Quebec',  'R' => 'Romeo',    'S' => 'Sierra',     'T' => 'Tango',
    'U' => 'Uniform', 'V' => 'Victor',   'W' => 'Whiskey',    'X' => 'X-ray',
    'Y' => 'Yankee',  'Z' => 'Zulu'
  }
  word.upcase.gsub(/./i, letters).gsub(/(?<=[a-z])(?=[A-Z])/, ' ')
end

# alternative

def nato2(word)
  letters = {
    'A' => 'Alpha',   'B' => 'Bravo',    'C' => 'Charlie',    'D' => 'Delta',
    'E' => 'Echo',    'F' => 'Foxtrot',  'G' => 'Golf',       'H' => 'Hotel',
    'I' => 'India',   'J' => 'Juliett',  'K' => 'Kilo',       'L' => 'Lima',
    'M' => 'Mike',    'N' => 'November', 'O' => 'Oscar',      'P' => 'Papa',
    'Q' => 'Quebec',  'R' => 'Romeo',    'S' => 'Sierra',     'T' => 'Tango',
    'U' => 'Uniform', 'V' => 'Victor',   'W' => 'Whiskey',    'X' => 'X-ray',
    'Y' => 'Yankee',  'Z' => 'Zulu'
  }
  word.upcase.chars.map { |c| letters[c] }.join(' ')
end

p nato('banana') # "Bravo Alpha November Alpha November Alpha"
p nato('babble') # "Bravo Alpha Bravo Bravo Lima Echo"
