require 'minitest/autorun'
require_relative 'recursion'

class TestSum < Minitest::Test
  def test_sum
    assert_equal(12, Recursion.sum(2, 4, 6))
  end

  def test_count
    assert_equal(3, Recursion.count(2, 4, 6))
  end

  def test_max
    assert_equal(6, Recursion.max(2, 4, 6))
  end
end
