require 'minitest/autorun'
require_relative 'binary_search'
require_relative 'recursive_binary_search'

class TestSearch < Minitest::Test
  def test_binary_search
    list = [1, 3, 5, 7, 9]
    assert_equal(0, Search.binary_search(list, 1))
    assert_equal(3, Search.binary_search(list, 7))
    assert_nil(Search.binary_search(list, -1))
    assert_nil(Search.binary_search(list, 10))
  end

  def test_recursive_binary_search
    list = [1, 3, 5, 7, 9]
    assert_equal(true, Search.recursive_binary_search(list, 1))
    assert_equal(true, Search.recursive_binary_search(list, 7))
    assert_equal(false, Search.recursive_binary_search(list, -1))
    assert_equal(false, Search.recursive_binary_search(list, 10))
  end
end
