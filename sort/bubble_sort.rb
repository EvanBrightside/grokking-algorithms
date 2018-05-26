# https://en.wikipedia.org/wiki/Bubble_sort
module Sort
  class << self
    def bubble_sort(list)
      sorted = false
      until sorted == true
        swapped = false
        (list.size - 1).times do |i|
          # p i: i, list_i: list[i], list_i_plus: list[i+1]
          next unless list[i] > list[i + 1]
          list[i], list[i + 1] = list[i + 1], list[i]
          swapped = true
        end
        break unless swapped
      end
      list
    end

    def recursive_bubble_sort(list)
      # p list: list
      return if list.size == 1
      (list.size - 1).times do |i|
        next unless list[i] > list[i + 1]
        list[i], list[i + 1] = list[i + 1], list[i]
        recursive_bubble_sort(list)
      end
      list
    end
  end
end

# Ω(n) best-case scenario
# O(n^2) worst-case scenario
# Θ(n^2) average-case scenario
