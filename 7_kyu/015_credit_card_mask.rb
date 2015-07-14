# 015_credit_card_mask.rb
# http://www.codewars.com/kata/credit-card-mask
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Usually when you buy something, you're asked whether your credit card number,
# phone number or answer to your most secret question is still correct.
# However, since someone could look over your shoulder, you don't want that
# shown on your screen. Instead, we mask it.

# Your task is to write a function `maskify`, which changes all but the last
# four characters into `#`.

# Examples:

# maskify('4556364607935616') # should return '############5616'
# maskify('64607935616')      # should return '#######5616'
# maskify('1')                # should return '1'
# maskify('')                 # should return ''

# What was your first pet?
# maskify('Skippy')           # should return '##ippy'
# maskify('Nananananananananananananananana Batman!')
# should return '####################################man!'

def maskify(cc)
  chars = cc.split('')            # split up string into array
  chars.each_with_index do |c, i| # iterate over each element
    if i < cc.length - 4          # for all but last 4 elements
      chars[i] = '#'              # set a hash symbol as its value
    else                          # otherwise
      chars[i] = c                # just print the character
    end
  end.join('')                    # join the array of characters into a string
end

p maskify('abcdefg')
p maskify('4556364607935616')
p maskify('64607935616')
p maskify('1')
p maskify('')
p maskify('Skippy')
p maskify('Nananananananananananananananana Batman!')
