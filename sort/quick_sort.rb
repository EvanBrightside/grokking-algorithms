module Sort
  def self.quick_sort(list)
    return list if list.size < 2  # Base case: arrays with 0 or 1 elemente are already sorted

    pivot_index = list.size/2
    pivot = list.delete_at(pivot_index)

    left, right = list.partition { |r| r < pivot }
    quick_sort(left) + [pivot] + quick_sort(right)
  end
end

# O(n log n) best-case scenario
# O(n^2) worst-case scenario

# Exercises
# How long would each of these operations take in Big O notation?

# 4.5 Printing the value of each element in an array.
# => O(n)

# 4.6 Doubling the value of each element in an array.
# => O(n)

# 4.7 Doubling the value of just the first element in an array.
# => O(1)

# 4.8 Creating a multiplication table with all the elements in the array.
# So if your array is [2, 3, 7, 8, 10], you first multiply every element by 2,
# then multiply every element by 3, then by 7, and so on.
# => O(n^2)
