require 'minitest/autorun'
require_relative 'selection_sort'

class TestSelectionSort < Minitest::Test
  def test_selection_sort
    list = [5, 3, 6, 2, 10]
    assert_equal(list.sort, Sort.selection_sort(list))
  end
end
