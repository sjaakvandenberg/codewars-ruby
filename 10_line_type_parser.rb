# 10_line_type_parser.rb
# http://www.codewars.com/kata/line-type-parser
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# We need a method for parsing an array of strings to see which
# of 3 categories they fall into:

# - :alpha strings contain the word 'alpha'
# - :beta strings contain the word 'beta'
# - :unknown strings don't contain either 'alpha' or 'beta'
# - :unknown is also used for nil entries
# - no strings will contain both 'alpha' or 'beta'
# - the strings can contain alpha and beta in any case (e.g. "Alpha", "BeTa")

# The input will be an array of containing strings and nils. The output should
# be an array containing :alpha, :beta and :unknown symbols,
# based on the string at that index in the input array.

# For example, the input:

# ["I'm Alpha", 'No idea', 'beta tester', nil]

# should result in:

# [:alpha, :unknown, :beta, :unknown]

input = ['This is an alpha line', 'Beta line next!', 'Another AlphA', 'I have no idea', nil]

def line_types(lines)   # lines is an array of strings
  lines.collect do |e|  # take each element in the list
    if /alpha/i =~ e    # check each element for the presence of `alpha`
      :alpha            # return `:alpha` symbol if `alpha` is found
    elsif /beta/i =~ e  # check each element for the presence of `beta`
      :beta             # return `:beta` symbol if `beta` is found
    else                # otherwise, return the `:unknown` symbol
      :unknown
    end
  end
end

# alternative solutions

def line_types2(lines)
  lines.map { |line| line.to_s[/alpha|beta/i].downcase.to_sym rescue :unknown }
end

p line_types(input)
