# Public: Sort an array using insertion sort algorithm.

# Examples
#   SortingSuite::InsertionSort.new([3, 2, 1]).sort
#   # => [1, 2, 3]

#   SortingSuite::InsertionSort.new([5,3,1,2,4]).sort
#   # => [1, 2, 3, 4, 5]

module SortingSuite
  class InsertionSort
    attr_reader :data

    def initialize(data)
      @data = data
    end

    def sort
      return data if data.empty?
      sorted_numbers = []
      sorted_numbers[0] = data[0]

      (1..data.length - 1).each do |index|
        sorted = false

        (0..sorted_numbers.length - 1).each do |sorted_index|
          if data[index] < sorted_numbers[sorted_index]
            sorted_numbers.insert(sorted_index, data[index])
            sorted = true
            break
          end
        end

        sorted_numbers << data[index] unless sorted == true
      end

      sorted_numbers
    end
  end
end

SortingSuite::InsertionSort.new([3, 2, 1]).sort
