require 'minitest'
require_relative '../lib/bubble_sort.rb'

class BubbleSortTest < Minitest::Test

  def test_handles_array_of_size_one
    assert_equal [2], SortingSuite::BubbleSort.new([2]).sort
  end

  def test_handles_array_size_of_two
    assert_equal [2, 3], SortingSuite::BubbleSort.new([3, 2]).sort
  end

  def test_handles_already_sorted_array_of_size_of_two
    assert_equal [2, 3], SortingSuite::BubbleSort.new([2, 3]).sort
  end

  def test_handles_array_size_greater_than_two
    assert_equal [1, 2, 3], SortingSuite::BubbleSort.new([3, 2, 1]).sort
  end

  def test_handles_large_already_sorted_array
    assert_equal [1, 2, 3, 4, 5], SortingSuite::BubbleSort.new([1, 2, 3, 4, 5]).sort
  end

  def test_handles_duplicate_numbers
    assert_equal [1, 2, 2, 3], SortingSuite::BubbleSort.new([2, 3, 1, 2]).sort
  end

  def test_handles_decimals
    assert_equal [1.1, 1.2, 2.7], SortingSuite::BubbleSort.new([2.7, 1.1, 1.2]).sort
  end

  def test_handles_negative_numbers
    assert_equal [-2, 0, 2], SortingSuite::BubbleSort.new([0, 2, -2]).sort
  end

  def test_handles_array_of_strings
    assert_equal ['a', 'b', 'c', 'd'], SortingSuite::BubbleSort.new(['d', 'b', 'a', 'c']).sort
  end

end
