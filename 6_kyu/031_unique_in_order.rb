# 031_unique_in_order.rb
# http://www.codewars.com/kata/unique-in-order
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Implement the function unique_in_order which takes as argument a sequence
# and returns a list of items without any elements with the same value next
# to each other and preserving the original order of elements.

# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

def unique_in_order(str)
  if str.is_a?(Array)
    str.chunk { |e| e }.map(&:first)
  else
    str.chars.chunk { |e| e }.map(&:first)
  end
end

# alternative

def unique_in_order2(str)
  if str.is_a?(Array)
    str.each_with_object([]) { |e, a| a << e if a.last != e }
  else
    str.chars.each_with_object([]) { |e, a| a << e if a.last != e }
  end
end

p unique_in_order2('AAAABBBCCDAABBB')  # ["A", "B", "C", "D", "A", "B"]
p unique_in_order2('ABBCcAD')          # ["A", "B", "C", "c", "A", "D"]
p unique_in_order2([1, 2, 2, 3, 3])    # [1, 2, 3]
