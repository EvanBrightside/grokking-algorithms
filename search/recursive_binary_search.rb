module Search
  def self.recursive_binary_search(list, item)
    low = 0
    high = list.size - 1
    return false if low >= high

    mid = (low + high) / 2
    guess = list[mid]

    return true if guess == item
    if guess > item
      high = [mid - 1, 0].max
    else
      low = mid + 1
    end
    recursive_binary_search(list[low..high], item)
  end
end
