# https://en.wikipedia.org/wiki/MergeSort
# https://www.khanacademy.org/computing/computer-science/algorithms/merge-sort/a/overview-of-merge-sort
module Sort
  def self.merge_sort(list)
    merge = lambda do |left, right|
      p merge: { left: left, right: right }

      next left if right.empty?
      next right if left.empty?
      smallest = left.first <= right.first ? left.shift : right.shift
      [smallest] + merge.call(left, right)
    end

    puts sort: list
    return list if list.size == 1
    mid = list.size / 2

    p sort: list, left: list.take(mid), right: list.drop(mid), mid: mid

    left = merge_sort(list.take(mid))
    right = merge_sort(list.drop(mid))
    merge.call(left, right)
  end
end

# Ω(n log(n)) best-case scenario
# O(n log(n)) worst-case scenario
# Θ(n log(n)) average-case scenario
