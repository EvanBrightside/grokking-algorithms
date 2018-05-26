module Recursion
  class << self
    def sum(*array)
      return 0 if array.empty?
      array.shift + sum(*array)
    end

    def count(*array)
      return 0 if array.empty?
      array.shift
      1 + count(*array)
    end

    def max(*array)
      head = array.shift
      return head if array.empty?
      tail_max = max(*array)
      head > tail_max ? head : tail_max
    end
  end
end
