# https://en.wikipedia.org/wiki/Breadth-first_search
# https://www.khanacademy.org/computing/computer-science/algorithms/breadth-first-search/a/breadth-first-search-and-its-uses

module Search
  def self.breadth_first_search(list, condition)
    queue = list.keys
    while item = queue.shift
      p item: item, queue: queue
      return true if condition.call(item)
      queue.concat(list[item])
    end
    false
  end
end
