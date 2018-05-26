require 'minitest/autorun'
require_relative 'selection_sort'
require_relative 'quick_sort'
require_relative 'merge_sort'
require_relative 'bubble_sort'

class TestSort < Minitest::Test
  def test_bubble_sort
    assert_equal(@list.sort, Sort.bubble_sort(@list.dup))
    assert_equal(@list.sort, Sort.recursive_bubble_sort(@list.dup))
  end

  def test_merge_sort
    assert_equal(@list.sort, Sort.merge_sort(@list.dup))
  end

  def test_quick_sort
    assert_equal(@list.sort, Sort.quick_sort(@list.dup))
  end

  def test_selection_sort
    assert_equal(@list.sort, Sort.selection_sort(@list.dup))
  end

  private

  def setup
    @list = [3, 5, 2, 1, 4].freeze
  end
end
