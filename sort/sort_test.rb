require 'minitest/autorun'
require_relative 'selection_sort'
require_relative 'quick_sort'

class TestSort < Minitest::Test
  def test_selection_sort
    list = [5, 3, 6, 2, 10]
    assert_equal(list.sort, Sort.selection_sort(list))
  end

  def test_quick_sort
    list = [3, 5, 2, 1, 4]
    assert_equal(list.sort, Sort.quick_sort(list))
  end
end
