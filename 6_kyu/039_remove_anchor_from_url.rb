# 039_remove_anchor_from_url.rb
# http://www.codewars.com/kata/remove-anchor-from-url
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the function/method so that it returns the url with anything
# after the anchor (#) removed.

# Examples:

def remove_url_anchor(url)
  url.gsub(/\#.*$/, '')
end

# alternative

def remove_url_anchor2(url)
  url.split('#').shift
end

p remove_url_anchor('www.codewars.com#about')  # 'www.codewars.com'
p remove_url_anchor('www.codewars.com?page=1') # 'www.codewars.com?page=1'

# tests

Test.assert_equals(remove_url_anchor('www.codewars.com#about'), 'www.codewars.com')
Test.assert_equals(remove_url_anchor('www.codewars.com?page=1'), 'www.codewars.com?page=1')
