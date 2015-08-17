# 005_rgb_to_hex_conversion.rb
# http://www.codewars.com/kata/rgb-to-hex-conversion
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# The rgb() method is incomplete. Complete the method so that passing in RGB
# decimal values will result in a hexadecimal representation being returned.
# The valid decimal values for RGB are 0 - 255. Any (r, g, b) argument values
# that fall out of that range should be rounded to the closest valid value.

def rgb(*args)
  args.map do |color|
    color = 255 if color > 255
    color = 0 if color < 0
    color.to_s(16).upcase.rjust(2, '0')
  end.join
end

# alternative

def rgb2(r, g, b)
  format('%.2X%.2X%.2X', *([r, g, b].map { |i| [[i, 255].min, 0].max }))
end

p rgb(255, 255, 255)  # FFFFFF
p rgb(255, 255, 300)  # FFFFFF
p rgb(0, 0, 0)        # 000000
p rgb(148, 0, 211)    # 9400D3

# p rgb2(255, 255, 255)  # FFFFFF
# p rgb2(255, 255, 300)  # FFFFFF
# p rgb2(0, 0, 0)        # 000000
# p rgb2(148, 0, 211)    # 9400D3

# tests

# Test.assert_equals(rgb(255, 255, 255), 'FFFFFF')
# Test.assert_equals(rgb(255, 255, 300), 'FFFFFF')
# Test.assert_equals(rgb(0, 0, 0), '000000')
# Test.assert_equals(rgb(148, 0, 211), '9400D3')
