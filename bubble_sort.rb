# frozen_string_literal: true

# this method sorts a given array of numbers using a bubble sort algorithm
def bubble_sort(arr)
  arr.each do
    i = 0
    swap = 0
    while i < arr.length - 1
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
      end
      i += 1
      swap += 1
    end
    break if swap.zero?
  end
  arr
end

# this method sorts an array by accepting a block
def bubble_sort_by(array)
  raise 'No block_given' unless block_given?

  len = array.length - 1
  len.step(1, -1) do |a|
    (0...a).each do |i|
      test = yield(array[i], array[i + 1])
      next unless test.positive?

      temp = array[i]
      array[i] = array[i + 1]
      array[i + 1] = temp
    end
  end
  array
end
