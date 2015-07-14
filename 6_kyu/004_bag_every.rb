# 004_bag_every.rb
# http://www.codewars.com/kata/bag-number-every
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# We have an awesome, custom collection class, _Bag_, which already has
# implemented an #each for travering its items and #count for counting the
# items. New requirements come in for the project to check arbitrary conditions
# regarding data inside of a _Bag_.

# We were just about to break out the trust old #each hammer, when we realize
# there might be a better/easier/cleaner way. Spotting an abstraction waiting
# to happen, we decide to implement a new method, #every?, to make sure that
# every item in a _Bag_ matches the condition.

# The #every? method needs to receive a block to run some test against every
# item. If _every_ test passes, it returns true. If any of the tests fail, it
# returns false. Empty bags should pass all tests.

# It also has a shorthand variation for our lazy friends. If you do not pass
# a block to #every, it tests the truthiness of the items themselves.

# Examples:

# bag = Bag.new(:surefire, :tests)
# bag.every? { true } # => true
# bag.every? { false } # => false
#
# bag = Bag.new(1, 2, 3, 4)
# bag.every? { |num| num > 0 } # => true
# bag.every? { |num| num.odd? } # => false
#
# bag = bag.new(:code, :wars)
# bag.every? # => true
#
# bag = Bag.new(:cat, :+, :roomba, nil, :profit!)
# bag.every? # => false

# bag class
class Bag
  attr_accessor :items   # create instance variable

  def each
  end

  def count
  end

  def initialize(*items) # store args in array called items
    @items = items       # @items is the instance variable
  end

  def every?
    output = []
    if block_given?
      each { |x| output << yield(x) }
    else
      output = each { |x| output << x }
    end
    output.all?
  end
end

bag = Bag.new(1, 2, 3, 4)
p bag.every? { |num| num > 0 } # => true
p bag.every? { |num| num.odd? } # => false

bag = Bag.new(:surefire, :tests)
p bag.every? { true } # => true
p bag.every? { false } # => false

bag = Bag.new(:code, :wars)
p bag.every? # => true

bag = Bag.new(:cat, :+, :roomba, nil, :profit!)
p bag.every? # => false

# tests
bag = Bag.new(1, 2, 3, 4)
Test.assert_equals(bag.every? { |num| num > 0 }, true, 'Error')
Test.assert_equals(bag.every? { |num| num.odd? }, false, 'Error')
bag = Bag.new(:surefire, :tests)
Test.assert_equals(bag.every? { true }, true, 'Error')
Test.assert_equals(bag.every? { false }, false, 'Error')
bag = Bag.new(:code, :wars)
Test.assert_equals(bag.every?, true, 'Error')
bag = Bag.new(:cat, :+, :roomba, nil, :profit!)
Test.assert_equals(bag.every?, false, 'Error')
