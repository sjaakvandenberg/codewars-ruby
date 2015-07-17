# 022_simple_sentences.rb
# http://www.codewars.com/kata/simple-sentences
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Implement a function that produces a sentence out of the given parts.

# Array of parts could contain:
# - words
# - commas in the middle
# - multiple periods at the end

# Sentence making rules:
# - there must always be a space between words
# - there must not be a space between a comma and a word on the left
# - there must always be one and only one period at the end of a sentence

# TODO
# [x] word,
# [x] word word
# [x] word.

def make_sentence(parts)
  sentence = parts.join(' ').chars          # form sentence
  sentence.push('.') if sentence[-1] != '.' # add period at EOL
  # correct spaces around commas and multiple spaces or periods
  sentence.join('').gsub(/\s+/, ' ').gsub(/\b(\s+\W?)\,(\s?\W?)\b/, ', ').gsub(/\W+\z/, '.')
end

# alternative

def make_sentence2(parts)
  parts.join(' ').gsub(' ,', ',').sub(/(\s\.)*$/, '.')
end

def make_sentence3(parts)
  parts.join(' ').gsub(' ,', ',').gsub(' .', '') << '.'
end

p make_sentence(['hello  ', ',', 'my  ', 'dear', '...'])   # 'hello, my dear.'
p make_sentence(['hi  ', ',', ',mister  ', '  rabbit..'])  # 'hi, mister rabbit.'
p make_sentence(['hello', 'world', '...'])  # 'hi, mister rabbit.'
p make_sentence(['hello', 'world...'])  # 'hi, mister rabbit.'

# tests

# Test.assert_equals(make_sentence(['hello', 'world']), 'hello world.')
# Test.assert_equals(make_sentence(['hello  ', ',', 'my  ', 'dear', '...']), "hello, my dear.")
# Test.assert_equals(make_sentence(['hi  ', ',', ',mister  ', '  rabbit..']), "hi, mister rabbit.")
