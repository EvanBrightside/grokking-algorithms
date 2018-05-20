# https://en.wikipedia.org/wiki/Binary_search_algorithm
# https://www.khanacademy.org/computing/computer-science/algorithms/binary-search/a/binary-search

module Search
  def self.binary_search(list, item)
    low = 0                          # low and high keep track of which part of the list you'll search in
    high = list.size - 1

    while low <= high                # While you haven't narrowed it down to one element
      mid = (low + high) / 2         # Check the middle element
      puts "mid: #{mid}"
      guess = list[mid]

      return mid if guess == item    # Found the item
      if guess > item                # The guess was too high
        high = mid - 1
      else                           # The guess was too low
        low = mid + 1
      end
    end
  end
end

## O(log n)

## 1.1 Suppose you have a sorted list of 128 names, and you're searching through it using binary search.
## What's the maximum number of steps it would take?
# log2(128) = 7

## 1.2 Suppose you double the size of the list. What's the maximum number of steps now?
# log2(256) = 8

## 1.3 You have a name, and you want to find the persond's phone number in the phone book.
# O(log n)

## 1.4 You have a phone number, and you want to find the persond's name in the phone book.
## (Hint: Youd'll have to search through the whole book!)
# O(n)

## 1.5 You want to read the numbers of every person in the phone book.
# O(n)

## 1.6 You want to read the numbers of just the As. (This is a tricky one! It involves concepts that are covered
## more in chapter 4. Read the answer—you may be surprised!)
# O(n)
