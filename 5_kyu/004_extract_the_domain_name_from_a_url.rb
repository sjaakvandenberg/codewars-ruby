# 004_extract_the_domain_name_from_a_url.rb
# http://www.codewars.com/kata/extract-the-domain-name-from-a-url-1
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that when given a URL as a string, parses out just the
# domain name and returns it as a string.

def domain_name(url)
  (url.match %r/http.+\/\/w{0,3}\.?(.+)\.com/)[1]
end

# alternative

def domain_name2(url)
  URI.parse(url).host.split('.').last(2)[0]
end

p domain_name('http://github.com/carbonfive/raygun')
p domain_name('http://www.zombie-bites.com')
p domain_name('https://www.cnet.com')

# tests

Test.assert_equals(domain_name('http://github.com/carbonfive/raygun'), 'github')
Test.assert_equals(domain_name('http://www.zombie-bites.com'), 'zombie-bites')
Test.assert_equals(domain_name('https://www.cnet.com'), 'cnet')
