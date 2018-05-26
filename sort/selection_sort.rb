# https://en.wikipedia.org/wiki/Selection_sort
# https://www.khanacademy.org/computing/computer-science/algorithms/sorting-algorithms/a/selection-sort-pseudocode

module Sort
  def self.selection_sort(list)
    find_smallest = proc do |array|
      smallest = array[0]                  # Stores the smallest value
      smallest_index = 0                   # Stores the index of the smallest value
      array.size.times do |index|
        if array[index] < smallest
          smallest = array[index]
          smallest_index = index
        end
      end
      smallest_index
    end

    Array.new(list.size) do
      smallest = find_smallest.call(list) # finds the smallest element in the array and maps it
      list.delete_at(smallest)
    end
  end
end

## O(n^2)
