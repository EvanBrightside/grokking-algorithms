require 'minitest/autorun'
require_relative 'binary_search'
require_relative 'breadth_first_search'
require_relative 'dijkstra_search'
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

  def test_breadth_first_search
    graph = {
      you: %i[alice bob clarie],
      bob: %i[anuj peggy],
      alice: %i[peggy],
      clarie: %i[thom jonny],
      anuj: %i[],
      peggy: %i[],
      thom: %i[],
      jonny: %i[]
    }
    condition = proc { |name| name[-1] == 'm' }
    assert_equal(true, Search.breadth_first_search(graph, condition))
  end

  def test_dijkstra_search
    graph = {
      start: { a: 6, b: 2 },
      a: { fin: 1 },
      b: { a: 3, fin: 5 },
      fin: {}
    }
    assert_equal(6, Search.dijkstra_search(graph, :start, :fin))
  end
end
