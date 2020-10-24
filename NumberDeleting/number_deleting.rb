# frozen_string_literal: true

# Class of finding min and max values and the deleting them
class Functions
  # Finding max value in array
  def maximum(arr)
    m = arr.max
    m
  end

  # Finding min value in array
  def minimum(arr)
    m = arr.min
    m
  end

  # Deleting max and min values from array
  def deleting(arr, min, max)
    arr.delete(min)
    arr.delete(max)
    arr
  end
end
