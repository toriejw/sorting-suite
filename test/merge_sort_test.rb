require_relative '../lib/merge_sort'

class MergeSortTest < Minitest::Test
  def test_returns_empty_array_if_no_input
    assert_equal [], SortingSuite::MergeSort.new([]).sort
  end

  def test_handles_array_of_size_one
    assert_equal [3], SortingSuite::MergeSort.new([3]).sort
  end

  def test_sorts_array_of_size_two
    assert_equal [1, 2], SortingSuite::MergeSort.new([2, 1]).sort
    assert_equal [1, 2], SortingSuite::MergeSort.new([1, 2]).sort
  end

  def test_sorts_larger_arrays
    assert_equal [1, 2, 3], SortingSuite::MergeSort.new([3, 2, 1]).sort
    assert_equal [1, 2, 3, 4, 5], SortingSuite::MergeSort.new([2,5,4,1,3]).sort
  end

  def test_handles_duplicate_numbers
    assert_equal [1, 2, 2, 3], SortingSuite::MergeSort.new([2, 3, 1, 2]).sort
  end

  def test_handles_decimals
    assert_equal [1.1, 1.2, 2.7], SortingSuite::MergeSort.new([2.7, 1.1, 1.2]).sort
  end

  def test_handles_negative_numbers
    assert_equal [-2, 0, 2], SortingSuite::MergeSort.new([0, 2, -2]).sort
  end

  def test_handles_arrays_of_non_even_length
    assert_equal [1, 2, 3, 4, 5, 8, 9], SortingSuite::MergeSort.new([8, 1, 9, 2, 4, 3, 5]).sort
    assert_equal [1, 2, 3, 4, 5], SortingSuite::MergeSort.new([2,5,4,1,3]).sort
  end

  def test_handles_array_of_strings
    assert_equal ['a', 'b', 'c', 'd'], SortingSuite::MergeSort.new(['d', 'b', 'a', 'c']).sort
  end
end
