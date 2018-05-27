# https://en.wikipedia.org/wiki/Breadth-first_search
# https://www.khanacademy.org/computing/computer-science/algorithms/breadth-first-search/a/breadth-first-search-and-its-uses

module Search
  def self.breadth_first_search(list, condition)
    queue = list.keys
    searched = [] # This array is how you keep track of which people you’ve searched before.
    while (item = queue.shift)
      next if searched.include?(queue) # Only search this person if you haven’t already searched them
      return true if condition.call(item)
      queue.concat(list[item])
      searched.push(item) # marks this person as searched
    end
    false
  end
end

# Adding one person tho the queue: O(1)
# Doing this for every person: O(n)
# O(V+E) O(number of people + numner of edges)
