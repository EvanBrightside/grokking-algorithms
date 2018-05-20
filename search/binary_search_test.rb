require 'minitest/autorun'
require_relative 'binary_search'

class TestBinarySearch < Minitest::Test
  def test_binary_search
    list = [1, 3, 5, 7, 9]
    assert_equal(0, Search.binary_search(list, 1))
    assert_equal(3, Search.binary_search(list, 7))
    assert_nil(Search.binary_search(list, -1))
    assert_nil(Search.binary_search(list, 10))
  end
end
