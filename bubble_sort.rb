# frozen_string_literal: true

# bubble_sort
def bubble_sort(array)
  arr = array.length

  loop do
    action = false
    (arr - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        action = true
      end
    end

    break unless action
  end

  array
end

# bubble_sort_by
def bubble_sort_by(array)
  switch = true

  while switch
    (0...array.length - 1).each do |i|
      result = yield(array[i], array[i + 1])
      if result.positive?
        array[i], array[i + 1] = array[i + 1], array[i]
      else
        switch = false
      end
    end
  end

  p array
end

# test given on The Odin Project
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

p bubble_sort([58, 67, 68, 69, 70, 9, 6, 2, 7, 78, 5, 3, 2, 4, 6, 8])
