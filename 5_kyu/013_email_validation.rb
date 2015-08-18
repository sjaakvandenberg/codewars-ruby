# 013_email_validation.rb
# http://www.codewars.com/kata/email-validation
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Email addresses are notoriously difficult to validate. Create a method that
# takes an email and returns true if valid, false otherwise.
# It doesn't have to be perfect.

def validate(email)
  email.match(/^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i) ? true : false
end

p validate('mail@svdb.co')        # true
p validate('john.doe@gmail.com')  # true
p validate('john.doe@gmail.com')  # true
p validate('joe@example.com')     # true
p validate('a@b.io')              # true
p validate('a@b.c')               # false
p validate('a@b.io!')             # false
p validate('a!@b.io')             # false
p validate('joe')                 # false
