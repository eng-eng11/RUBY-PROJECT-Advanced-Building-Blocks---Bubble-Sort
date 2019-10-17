
# array = ["hi","hello","hey"]

def bubble_sort_by(array)
  len = array.length
  (0...len).each do
    (len - 2).times do |j|
      if yield(array[j], array[j + 1]) > 0
        array[j + 1], array[j] = array[j], array[j + 1]
      end
    end
  end
  array
end

bubble_sort_by(array) do |left, right|
  left.length - right.length
end

# print array
