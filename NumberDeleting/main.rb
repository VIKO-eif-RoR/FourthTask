# frozen_string_literal: true

# Including NumberDeleting class
require_relative 'number_deleting.rb'

# Creating new object
numbers = Functions.new

# Generating array
array = Array.new(10) { rand(1...1000) }

# Searching for maximum and minimum values
max1 = numbers.maximum(array)
min1 = numbers.minimum(array)
puts(max1)
puts(min1)

# Deleting minimum and maximum values
array = numbers.deleting(array, max1, min1)
puts('-----------------------')

# Writing all left numbers from an array
(0..7).each do |i|
  puts(array[i])
end
