# Public: Sort an array using merge sort algorithm.

# Examples
#   SortingSuite::MergeSort.new([3, 2, 1]).sort
#   # => [1, 2, 3]

#   SortingSuite::MergeSort.new([5,3,1,2,4]).sort
#   # => [1, 2, 3, 4, 5]

module SortingSuite
  class MergeSort
    attr_reader :data

    def initialize(data)
      @data = data
    end

    def split_data
      unmerged_arrays = []
      (0..data.length - 2).step(2) do |index|
        unmerged_arrays << [data[index], data[index + 1]]
      end

      unmerged_arrays << [data[-1]] if data.length.odd?
      unmerged_arrays
    end

    def merge_arrays(first_array, second_array)
      merged_array = []
      loop do
        if first_array[0] < second_array[0]
          merged_array << first_array.shift
        elsif second_array[0] < first_array[0]
          merged_array << second_array.shift
        elsif second_array[0] == first_array[0]
          merged_array << [first_array.shift, second_array.shift]
        end

        if first_array.empty?
          merged_array << second_array
          return merged_array.flatten
        elsif second_array.empty?
          merged_array << first_array
          return merged_array.flatten
        end
      end
    end

    def sort
      return data if data.size == 0 || data.size == 1
      unmerged_arrays = split_data

      unmerged_arrays.each do |pair|
        next if pair.size == 1
        pair[0], pair[1] = pair[1], pair[0] if pair[0] > pair[1]
      end

      if unmerged_arrays[-1].size == 1
        merged_numbers = merge_arrays(unmerged_arrays[-1], unmerged_arrays[-2])
        merged_arrays = unmerged_arrays[(0...-2)] << merged_numbers
      else
        merged_arrays = unmerged_arrays
      end

      number_of_arrays = []
      sorted_numbers = []

      loop do
        number_of_arrays = merged_arrays.size
        break if number_of_arrays < 3

        (0..number_of_arrays - 1).step(2) do |index|
          first_array = merged_arrays[index]
          second_array = merged_arrays[index + 1]

          if second_array.nil?
            sorted_numbers << first_array.flatten
            break
          else
            sorted_numbers << merge_arrays(first_array, second_array)
          end
        end

        merged_arrays = sorted_numbers
      end

      if number_of_arrays == 2
        merge_arrays(merged_arrays[0], merged_arrays[1])
      else
        merged_arrays.flatten
      end
    end
  end
end
