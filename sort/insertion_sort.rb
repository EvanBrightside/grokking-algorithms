# https://en.wikipedia.org/wiki/Insertion_sort
module Sort
  def self.insertion_sort(list)
    list.size.times do |i|
      i.downto(1) do |j|
        next unless list[j - 1] > list[j]
        list[j], list[j - 1] = list[j - 1], list[j]
      end
    end
    list
  end
end

# Ω(n) best-case scenario
# O(n^2) worst-case scenario
# Θ(n^2) average-case scenario
