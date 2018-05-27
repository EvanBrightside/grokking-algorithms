require 'minitest/autorun'
require_relative 'binary_search'
require_relative 'recursive_binary_search'
require_relative 'breadth_first_search'

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

  def test_breadth_first_search
    list = {
      'you' => %w[alice bob clarie],
      'bob' => %w[anuj peggy],
      'alice' => %w[peggy],
      'clarie' => %w[thom jonny],
      'anuj' => %w[],
      'peggy' => %w[],
      'thom' => %w[],
      'jonny' => %w[]
    }
    condition = proc { |name| name[-1] == 'm' }
    assert_equal(true, Search.breadth_first_search(list, condition))
  end
end
