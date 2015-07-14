# 005_reopen_class.rb
# http://www.codewars.com/kata/re-open-class
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Ruby and Javascript let you reopen classes so you can
# add new functionality to existing classes and objects.

# In this kata, you'll have to add a new method in the
# `String` class that calls the `upcase` method so that
# `'abc'.my_new_method` returns `ABC`

# String class additional method
class String
  def my_new_method
    upcase
  end
end

p 'abc'.my_new_method
