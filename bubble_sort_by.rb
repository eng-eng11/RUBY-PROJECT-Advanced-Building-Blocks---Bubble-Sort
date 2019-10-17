# frozen_string_literal: true

# array = ["hi","hello","hey"]

def bubble_sort_by(array)
  len = array.length
  (0...len).each do
    (len - 2).times do |j|
      array[j + 1], array[j] = array[j], array[j + 1] if yield(array[j], array[j + 1]).positive?
    end
  end
  array
end

bubble_sort_by(array) do |left, right|
  left.length - right.length
end

# print array
