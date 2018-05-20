require 'minitest/autorun'
require 'minitest/benchmark'
require 'faker'
require_relative 'binary_search'

class BinarySearchBenchmark < Minitest::Benchmark
  def bench_binary_search
    assert_performance_logarithmic do |n|
      Search.binary_search(@data.dig(n, :list), @data.dig(n, :item))
    end
  end

  def setup
    @data = self.class.bench_range.each_with_object({}) do |n, data|
      list = Array.new(n) { Faker::Number.number.to_i }.sort
      data[n] = { list: list, item: list.sample }
    end
  end

  # def self.bench_range
  #   bench_exp(1000, 1_000_000)
  # end
end
