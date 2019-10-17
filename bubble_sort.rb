array = [1, 6, 7, 8, 8, 5, 9, 2]

def bubble_sort(array) 
  len = array.count
  k = len - 2

  (0..len - 1).each do |j|
    (0..k).each do |i|
      if (array[i] > array[i + 1])
        array[i + 1], array[i] = array[i], array[i + 1]
      end
    end
    k -= 1
  end
  array
end

print bubble_sort(array)