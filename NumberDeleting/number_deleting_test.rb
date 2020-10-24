# frozen_string_literal: true

require_relative 'number_deleting.rb'
require 'test/unit'

# Class for testing Number deleting methods
class TestNumberDeleting < Test::Unit::TestCase
  def test_finding_maximum
    nums = Array.[](1, 2, 3, 4, 5)
    assert_equal(5, Functions.new.maximum(nums))
  end

  def test_finding_wrong_maximum
    nums = Array.[](1, 2, 3, 4, 5)
    assert_not_equal(1, Functions.new.maximum(nums))
  end

  def test_finding_minimum
    nums = Array.[](1, 2, 3, 4, 5)
    assert_equal(1, Functions.new.minimum(nums))
  end

  def test_finding_wrong_minimum
    nums = Array.[](1, 2, 3, 4, 5)
    assert_not_equal(5, Functions.new.minimum(nums))
  end

  def test_if_min_deleting_is_working
    nums = Array.[](1, 2, 3, 4, 5)
    array = Functions.new.deleting(nums, 1, 5)
    assert_not_include(array, 1)
  end

  def test_if_mmax_deleting_is_working
    nums = Array.[](1, 2, 3, 4, 5)
    array = Functions.new.deleting(nums, 1, 5)
    assert_not_include(array, 5)
  end

  def test_if_deleting_is_working
    nums = Array.[](1, 2, 3, 4, 5)
    array = Functions.new.deleting(nums, 1, 5)
    assert_equal(3, array.size)
  end
end
