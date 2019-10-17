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
    break if swap == 0
  end
  arr
end

p bubble_sort([3, 1, 5, 6, 2, 4, 7, 8])
