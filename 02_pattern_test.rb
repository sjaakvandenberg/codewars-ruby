# 02_pattern_test.rb

require_relative '02_pattern'
require 'test/unit'

# tests for pattern(n)
class PatternTest < Test::Unit::TestCase
  def test_succeed
    assert_equal(pattern(-5), '')
    assert_equal(pattern(0), '')
    assert_equal(pattern(1), '')
    assert_equal(pattern(2), 'even')
    assert_equal(pattern(5), 'odd')
  end

  def test_fail
    # assert_equal(pattern(2), '222')
    # assert_equal(pattern(1), '1')
    # assert_equal(pattern(5), '22')
  end
end
