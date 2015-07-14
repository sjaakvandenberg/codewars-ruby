# 63_decode_morse_code.rb
# http://www.codewars.com/kata/decode-the-morse-code
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In this kata you have to write a simple Morse code decoder. While the Morse
# code is now mostly superceded by voice and digital data communication
# channels, it still has its use in some applications around the world.

# The Morse code encodes every character as a sequence of "dots" and "dashes".
# For example, the letter A is coded as `.-`, letter Q is coded as `--.-`, and
# digit 1 is coded as `.---`. The Morse code is case-insensitive, traditionally
# capital letters are used. When the message is written in Morse code, a single
# space is used to separate the character codes and 3 spaces are used to
# separate words. For example, the message HEY JUDE
# in Morse code is `.... . -.-- .--- ..- -.. .`.

# NOTE: Extra spaces before or after the code have no meaning and should be
# ignored.

# In addition to letters, digits and some punctuation, there are some special
# service codes, the most notorious of those is the international distress
# signal SOS (that was first issued by Titanic), that is coded as `...---...`.
# These special codes are treated as single special characters, and usually are
# transmitted as separate words.

# Your task is to implement a function decodeMorse(morseCode), that would take
# the morse code as input and return a decoded human-readable string.

# For example:

# decodeMorse('.... . -.--   .--- ..- -.. .') # "HEY JUDE"

# All the test strings would contain valid Morse code, so you may skip checking
# for errors and exceptions.

# def nato2(word)
#   morse_code = {
#     '.-' => 'A',    '-...' => 'B',  '-.-.' => 'C',  '-..' => 'D',
#     '.' => 'E',     '..-.' => 'F',  '--.' => 'G',   '....' => 'H',
#     '..' => 'I',    '.---' => 'J',  '-.-' => 'K',   '.-..' => 'L',
#     '--' => 'M',    '-.' => 'N',    '---' => 'O',   '.--.' => 'P',
#     '--.-' => 'Q',  '.-.' => 'R',   '...' => 'S',   '-' => 'T',
#     '..-' => 'U',   '...-' => 'V',  '.--' => 'W',   '-..-' => 'X',
#     '-.--' => 'Y',  '--..' => 'Z',  '.----' => '1', '..---' => '2',
#     '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
#     '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'
#   }
#   word.upcase.chars.map { |c| letters[c] }.join(' ')
# end

MORSE = {
  '.-' => 'A',    '-...' => 'B',   '-.-.' => 'C',  '-..' => 'D',
  '.' => 'E',     '..-.' => 'F',   '--.' => 'G',   '....' => 'H',
  '..' => 'I',    '.---' => 'J',   '-.-' => 'K',   '.-..' => 'L',
  '--' => 'M',    '-.' => 'N',     '---' => 'O',   '.--.' => 'P',
  '--.-' => 'Q',  '.-.' => 'R',    '...' => 'S',   '-' => 'T',
  '..-' => 'U',   '...-' => 'V',   '.--' => 'W',   '-..-' => 'X',
  '-.--' => 'Y',  '--..' => 'Z',   '.----' => '1', '..---' => '2',
  '...--' => '3', '....-' => '4',  '.....' => '5', '-....' => '6',
  '--...' => '7', '---..' => '8',  '----.' => '9', '-----' => '0',
  '#' => ' ',     '-.-.--' => '!', '.-.-.-' => '.', '...---...' => 'SOS'
}

def decode_morse(str)
  # convert morse to array with dashes for spaces
  words = str.strip.gsub(/\s\s\s/, ' # ').split(' ')
  # sub chars and convert array to string
  words.map { |w| w.split(' ').map { |l| MORSE[l] } }.flatten.join
end

# alternative

def decode_morse2(str)
  str.strip.split('   ').map { |w| w.split(' ').map { |c| MORSE_CODE[c] }.join }.join(' ')
end

p decode_morse('-... .. - -.-. --- .. -.')      # "BITCOIN"
p decode_morse('.... . -.--   .--- ..- -.. .')  # "HEY JUDE"
p decode_morse('... --- ...')  # "SOS"

# tests

# Test.describe('Custom tests') do
#   Test.assert_equals(decodeMorse('... --- ...'), 'SOS')
#   Test.assert_not_equals(decodeMorse('--------'), 'SOS')
#   Test.assert_equals(decodeMorse('-... .. - -.-. --- .. -.'), 'BITCOIN')
# end
