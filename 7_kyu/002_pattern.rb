# 02_pattern.rb
# http://www.codewars.com/kata/anagram-detection
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# You have to write a function pattern which creates the following pattern
# upto n number of rows.

# - if the argument is 0 or a negative interger then it should return ''
# - if any odd number is passed as an argument then the pattern should last
#   upto the largest even number which is smaller than the passed odd number
# - if the argument is 1 then it should also return ''

# pattern(8)
# 22
# 4444
# 666666
# 88888888

# TODO: make pattern not return the original array

def pattern(n)
  if n <= 1         # number is 1 or lower
    return ''
  else              # number is 2 or higher
    # for each number from 1 up to n, select only the even numbers
    # and print that number the amount of times equal to the number
    # and follow up with a new line for each unique even number
    (1..n).select(&:even?).map do |x|
      x.times { print "#{x}" }
      print "\n"
      # return output
      # print "\n"
      # return x
      # if n > 3
        # return "#{x}" * x
      # else
        # return "#{x}" * x + "\n"
      # end
    end
  end
end

# p pattern(-4)
# p pattern(1)
p pattern(2)
# p pattern(8)

# 8
# 1..4

# def build_tree(n)
#   r = 0.5 * n.floor
#   (1..r).to_a.each do |x|
#     z = x * 2
#     puts z.to_s * z
#   end
# end
#
# def pattern(n)
#   if n < 0 || n == 0 || n == 1
#     ''
#   else
#     build_tree(n)
#   end
# end
#
# pattern(5)
# puts '---'
# pattern(8)
# puts '---'
# pattern(14)
# puts '---'
# pattern(-4)
# puts '---'
# pattern(0)
# puts '---'
# pattern(1)
# puts '---'
# pattern(2)

# 5  -> 2 lines --> n/2.floor
# 8  -> 4 lines --> n/2
# 14 -> 7 lines --> n/2
#
# 1..n/2.floor.each { |x| print x*2.times x*2}
#
# 22
# 4444
# 666666
# 88888888
# 10101010101010101010
# 121212121212121212121212
# 1414141414141414141414141414
