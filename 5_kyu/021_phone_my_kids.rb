# 021_phone_my_kids.rb
# http://www.codewars.com/kata/phone-my-kids
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Sometimes you need to know all classes that inherited from you, and to be
# able to do simple things like listing or calling all of them.

# Write a class called "Mother" that tracks all inheritances that are done to
# her (and her kids), together with a class method "phone_kids" that calls in
# turn the class method "phone" of all kids.

# So if you have two kids

# class Foo < Mother
# end

# class Bar < Mother
# end

# The line `Mother.phone_kids` would call (in either order)
# Foo.phone
# Bar.phone

class Mother
  @kids = []

  attr_reader :kids

  def self.inherited(kid)
    @kids << kid
  end

  def self.phone_kids
    @kids.each(&:phone)
  end
end
