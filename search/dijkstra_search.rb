# https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm
# https://www.khanacademy.org/computing/computer-science/algorithms/breadth-first-search/a/breadth-first-search-and-its-uses

module Search
  def self.dijkstra_search(graph, from, to)
    costs = graph[from].merge(to => Float::INFINITY)
    parents = graph[from].transform_values { from }.merge(to => nil)
    processed = []

    find_lowest_cost = proc {
      lowest_cost = Float::INFINITY
      lowest_cost_node = nil
      costs.each do |node, cost|
        next if processed.include?(node) || cost > lowest_cost
        lowest_cost = cost
        lowest_cost_node = node
      end
      lowest_cost_node
    }

    while (node = find_lowest_cost.call)
      cost = costs[node]
      neighbors = graph[node]

      neighbors.each do |neighbor_key, neighbor_value|
        new_cost = cost + neighbor_value

        next unless costs[neighbor_key] > new_cost
        costs[neighbor_key] = new_cost
        parents[neighbor_key] = node
      end
      processed.push(node)
    end

    costs[to]
  end
end
