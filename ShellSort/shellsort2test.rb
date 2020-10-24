# frozen_string_literal: true

require_relative 'shellsort2.rb'
require 'test/unit'

# Test klase skirta ShellSort rikiavimo funkcijos testavimui
class ShellSortTest < Test::Unit::TestCase
  def test_sort_6_numbers_array
    arraynum = 6
    array = [5, 4, 3, 2, 1, 0]
    sorted_array = [0, 1, 2, 3, 4, 5]
    values = Shellsort.new
    array = values.rikiavimas2(arraynum, array)
    assert_equal(sorted_array, array)
  end

  def test_sort_5_numbers_array
    arraynum = 5
    array = [5, 4, 3, 2, 1]
    sorted_array = [1, 2, 3, 4, 5]
    values = Shellsort.new
    array = values.rikiavimas2(arraynum, array)
    assert_equal(sorted_array, array)
  end

  def test_sort_6_numbers_array_with_negative_values
    arraynum = 6
    array = [-1, -5, -3, -2, -7, -4]
    sorted_array = [-7, -5, -4, -3, -2, -1]
    values = Shellsort.new
    array = values.rikiavimas2(arraynum, array)
    assert_equal(sorted_array, array)
  end

  def test_sort_5_number_array_with_negative_values
    arraynum = 5
    array = [-5, -2, -3, -6, -1]
    sorted_array = [-6, -5, -3, -2, -1]
    values = Shellsort.new
    array = values.rikiavimas2(arraynum, array)
    assert_equal(sorted_array, array)
  end

  def test_sort_array_5_number_array_with_negative_and_positive_values
    arraynum = 5
    array = [-5, 0, 3, -6, 8]
    sorted_array = [-6, -5, 0, 3, 8]
    values = Shellsort.new
    array = values.rikiavimas2(arraynum, array)
    assert_equal(sorted_array, array)
  end

  def test_sort_5_number_array_with_repeating_values
    arraynum = 5
    array = [3, 3, 8, 5, 8]
    sorted_array = [3, 3, 5, 8, 8]
    values = Shellsort.new
    array = values.rikiavimas2(arraynum, array)
    assert_equal(sorted_array, array)
  end
end
