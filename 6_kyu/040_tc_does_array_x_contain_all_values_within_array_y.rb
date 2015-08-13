# 040_tc_does_array_x_contain_all_values_within_array_y.rb
# http://www.codewars.com/kata/does-array-x-contain-all-values-within-array-y
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

require_relative '040_does_array_x_contain_all_values_within_array_y.rb'
require 'test/unit'

# tests

class TestArray < Test::Unit::TestCase

  def test_simple
    assert_equal([1, 2, 3, 4, 5].contains_all?([1, 2, 3]), true)
    assert_equal([1, 2, 3, 4, 5].contains_all?([0, 2, 4]), false)
    assert_equal([1, 2, 3, 4, 5].contains_all?([2, 5]), true)
    assert_equal([1, 2, 3, 4, 5].contains_all?([1, 5, 13]), false)
    assert_equal([1, 2, 3, 4, 5].contains_all?([nil]), false)
  end

end
