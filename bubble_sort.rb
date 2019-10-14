# frozen_string_literal: true

def bubble_sort(array)
  not_sorted = true, n = array.length - 1
  sorting(not_sorted, array, n)
  array
end

def sorting(not_sorted, array, index)
  while not_sorted
    not_sorted = false
    (0...index).each do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      not_sorted = true
    end
    index -= 1
  end
end

p bubble_sort([4, 3, 78, 2, 0, 2])

#=> [0,2,2,3,4,78]
