# 036_character_frequency.rb
# http://www.codewars.com/kata/character-frequency-1
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that takes a piece of text in the form of a string and
# returns the letter frequency count for the text. This count excludes
# numbers, spaces and all punctuation marks. Upper and lower case versions
# of a character are equivalent and the result should all be in lowercase.

# The function should return a list of tuples (in Python) or arrays (in
# other languages) sorted by the most frequent letters first. Letters with
# the same frequency are ordered alphabetically. For example:

# letter_frequency('aaAabb dddDD hhcc') ->
# [['d',5], ['a',4], ['b',2], ['c',2], ['h',2]]

# Letter frequency analysis is often used to analyse simple substitution
# cipher texts like those created by the Caesar cipher.

def letter_frequency(text)
  c = text.downcase.gsub(/[^a-zA-Z]/, '').chars
  arr = c.map { |e| [e, c.count(e)] }.uniq
  arr.sort_by { |e| [-e[1], e[0]] }
end

# alternative

def letter_frequency2(text)
  chars = text.downcase.scan(/[a-zA-Z]/).sort
  chars.map { |x| [x, chars.count(x)] }.uniq.sort_by { |y| [-y[1], y[0]] }
end

# p letter_frequency('aaAabb dddDD hhcc') # [["d", 5], ["a", 4], ["b", 2], ["c", 2], ["h", 2]]
# p letter_frequency('aaaabbbcdd') # [["a", 4], ["b", 3], ["d", 2], ["c", 1]]

# p letter_frequency('wklv lv d vhfuhw phvvdjh') # [['v', 5], ['h', 4], ['d', 2], ['l', 2], ['w', 2], ['f', 1], ['j', 1], ['k', 1], ['p', 1], ['u', 1]]
# p letter_frequency("As long as I'm learning something, I figure I'm OK - it's a decent day.") # [["i", 7], ["a", 5], ["e", 5], ["n", 5], ["g", 4], ["s", 4], ["m", 3], ["o", 3], ["t", 3], ["d", 2], ["l", 2], ["r", 2], ["c", 1], ["f", 1], ["h", 1], ["k", 1], ["u", 1], ["y", 1]]
# p letter_frequency('IWT LDGAS XH HIXAA P LTXGS EAPRT, STHEXIT BN TUUDGIH ID BPZT RATPG PCS ETGUTRI HTCHT DU XI.') # [["t", 12], ["i", 7], ["h", 6], ["a", 5], ["g", 5], ["p", 5], ["x", 5], ["d", 4], ["s", 4], ["u", 4], ["e", 3], ["r", 3], ["b", 2], ["c", 2], ["l", 2], ["n", 1], ["w", 1], ["z", 1]]
# p letter_frequency(';qdnh:,fgivqsy!') # [["q", 2], ["d", 1], ["f", 1], ["g", 1], ["h", 1], ["i", 1], ["n", 1], ["s", 1], ["v", 1], ["y", 1]]
# p letter_frequency(':g!aqpihghhi yo') # [["h", 3], ["g", 2], ["i", 2], ["a", 1], ["o", 1], ["p", 1], ["q", 1], ["y", 1]]
# p letter_frequency('coovya') # [["o", 2], ["a", 1], ["c", 1], ["v", 1], ["y", 1]]
# p letter_frequency(',o( kkhee(n;saj.?(wld;:v.uab') # [["a", 2], ["e", 2], ["k", 2], ["b", 1], ["d", 1], ["h", 1], ["j", 1], ["l", 1], ["n", 1], ["o", 1], ["s", 1], ["u", 1], ["v", 1], ["w", 1]]
# p letter_frequency('yr,vl:j') # [["j", 1], ["l", 1], ["r", 1], ["v", 1], ["y", 1]]
# p letter_frequency(',nfgzmjg(owx,tbs') # [["g", 2], ["b", 1], ["f", 1], ["j", 1], ["m", 1], ["n", 1], ["o", 1], ["s", 1], ["t", 1], ["w", 1], ["x", 1], ["z", 1]]
# p letter_frequency('tvn;:tuwaa') # [["a", 2], ["t", 2], ["n", 1], ["u", 1], ["v", 1], ["w", 1]]
# p letter_frequency('jmg(m:ajvknb?ynxxeyzb,') # [["b", 2], ["j", 2], ["m", 2], ["n", 2], ["x", 2], ["y", 2], ["a", 1], ["e", 1], ["g", 1], ["k", 1], ["v", 1], ["z", 1]]
# p letter_frequency(";vif!btqmkd'if c z:kjta;p;") # [["f", 2], ["i", 2], ["k", 2], ["t", 2], ["a", 1], ["b", 1], ["c", 1], ["d", 1], ["j", 1], ["m", 1], ["p", 1], ["q", 1], ["v", 1], ["z", 1]]
# p letter_frequency("v'lt fes") # [["e", 1], ["f", 1], ["l", 1], ["s", 1], ["t", 1], ["v", 1]]
# p letter_frequency('o,cn') # [["c", 1], ["n", 1], ["o", 1]]
# p letter_frequency("h 'v !:ipv") # [["v", 2], ["h", 1], ["i", 1], ["p", 1]]
# p letter_frequency('cq') # [["c", 1], ["q", 1]]
# p letter_frequency('k!nesouyrh') # [["e", 1], ["h", 1], ["k", 1], ["n", 1], ["o", 1], ["r", 1], ["s", 1], ["u", 1], ["y", 1]]
# p letter_frequency('voy') # [["o", 1], ["v", 1], ["y", 1]]
# p letter_frequency("ixhi;'q'p,") # [["i", 2], ["h", 1], ["p", 1], ["q", 1], ["x", 1]]
# p letter_frequency("fvv'oo!g.h!?j' npyc,h,a ns;") # [["h", 2], ["n", 2], ["o", 2], ["v", 2], ["a", 1], ["c", 1], ["f", 1], ["g", 1], ["j", 1], ["p", 1], ["s", 1], ["y", 1]]
# p letter_frequency("vqe; khpmn'j,wghoyoox") # [["o", 3], ["h", 2], ["e", 1], ["g", 1], ["j", 1], ["k", 1], ["m", 1], ["n", 1], ["p", 1], ["q", 1], ["v", 1], ["w", 1], ["x", 1], ["y", 1]]
