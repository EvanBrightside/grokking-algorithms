require 'minitest/autorun'
require_relative 'recursion'

class TestSum < Minitest::Test
  def test_sum
    assert_equal(12, Recursion.sum(*@list))
  end

  def test_count
    assert_equal(3, Recursion.count(*@list))
  end

  def test_max
    assert_equal(6, Recursion.max(*@list))
  end

  private

  def setup
    @list = [2, 4, 6].freeze
  end
end
