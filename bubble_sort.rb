# frozen_string_literal: true

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

p bubble_sort([3, 1, 5, 6, 2, 4, 7, 8])

def bubble_sort_by(arr)
  arr.each do |_left, _right|
    i = 0
    swap = 0

    while i < arr.length - 1
      yield_ = yield(arr[i], arr[i + 1]) if block_given?

      yield_ = arr[i] > arr[i + 1]
      if yield_
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

p bubble_sort_by(%w[hill hel world]) { |left, right| left.length - right.length }
