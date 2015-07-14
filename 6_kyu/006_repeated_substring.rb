# 006_repeated_substring.rb
# http://www.codewars.com/kata/repeated-substring
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# For a given nonempty string `s` find a minimum substring `t` and the maximum
# number `k`, such that the entire string `s` is equal to `t` repeated `k`
# times. The input string consists of lowercase latin letters. Your function
# should return an array `[t, k]`.

# For string `s = "ababab"`, the answer is `["ab", 3]`
# For string `s = "abcde"`, the asnwer is `["abcde", 1]`
# because for this string `"abcde"` the miminum substring `t`,
# such that `s` is `t` repeated `k` times, is itself.

def f(string)
  # string = string.scan(/(.+)(?=.*\1)/).map(&:first).max_by do |s|
  #   [s.size, string.scan(s).size, -~ /#{s}/]
  # end || string
  # (string.size / 2).downto(1) do |i|
  #   /(.{#{i}}).*\1/m =~ string and return $1
  # end
  # string
end

p f('ababab') # ["ab", 3]
p f('abcde')  # ["abcde", 1]

# $_=$_.scan(/(.+)(?=.*\1)/).map(&:first).max_by{|s|[s.size,$_.scan(s).size,-~/#{s}/]}||'No'
