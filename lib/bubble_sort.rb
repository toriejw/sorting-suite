
# Public: Sort an array using bubble sort algorithm.

# Examples
#   SortingSuite::BubbleSort.new([3, 2, 1]).sort
#   # => [1, 2, 3]

#   SortingSuite::BubbleSort.new([5,3,1,2,4]).sort
#   # => [1, 2, 3, 4, 5]


module SortingSuite
  class BubbleSort
    attr_reader :data
    def initialize(data)
      # data validation?
      @data = data
    end

    def swap_numbers(i, j)
      data[i], data[j] = data[j], data[i]
    end

    def sort # should this be destructive?
      loop do
        swapped = false
        (1..data.length - 1).each do |index|
          current_number = data[index]
          previous_number = data[index - 1] # necessary variables?

          if current_number < previous_number
            swap_numbers(index - 1, index)
            swapped = true
          end
        end
        break if swapped == false
      end
      @data
    end
  end
end
