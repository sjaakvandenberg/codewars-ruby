# 07_length_of_sequence.rb
# http://www.codewars.com/kata/finding-length-of-the-sequence
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# you need to find the lenght of the sequence in an array,
# between the first and second occurance of a specified number

arr = [0, -3, 7, 4, 0, 3, 7, 9]

# my solution

def length_of_sequence(array, number)
  # check the `array` for the presence
  # of two equal values of `number`
  if array.count(number.to_i) == 2
    first = array.index { |x| x == number } # find the first index
    last = array.rindex { |x| x == number } # find the last index
    # calculate the difference and add 1 for zero index
    last - first + 1
  else # return 0 if there aren't exactly two equal values
    0
  end
end

# better solution

def length_of_sequence2(array, number)
  return 0 unless array.count(number) == 2
  1 + array.rindex(number) - array.index(number)
end

# shorter solution

def length_of_sequence3(arr, n)
  arr.count(n) == 2 ? arr.rindex(n) - arr.index(n) + 1 : 0
end

puts length_of_sequence(arr, 7)                  # 5
puts length_of_sequence([1, 1], 1)               # 2
puts length_of_sequence([1, 2, 3, 1], 1)         # 4
puts length_of_sequence([-7, 5, 0, 2, 9, 5], 10) # 0
puts length_of_sequence([-7, 5, 0, 2, 9, 5], 2)  # 0
puts length_of_sequence([5, 5, 0, 2, 9, 5], 5)   # 0
puts length_of_sequence([-7, 5, 0, 2, 9, 5], 5)  # 5
puts length_of_sequence([-7, 6, 2, -7, 4], -7)   # 4
