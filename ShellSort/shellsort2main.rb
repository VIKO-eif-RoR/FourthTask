# frozen_string_literal: true

require_relative 'shellsort2.rb'

arraynum = 10
array = Array.new(arraynum) { rand(1...10) }

values = Shellsort.new
array = values.rikiavimas2(arraynum, array)
puts(array)
