# frozen_string_literal: true

def bubble_sort(array)
  (0..array.size - 2).each do |_i|
    (0..array.size - 2).each do |j|
      next unless array[j] <=> (array[j + 1]).positive?

      tmp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = tmp
    end
  end

  array
end

p bubble_sort([3, 1, 5, 6, 2, 4, 7, 8])

def bubble_sort_by(array)
  return bubble_sort(array) unless block_given?

  (0..array.size - 2).each do |_i|
    (0..array.size - 2).each do |j|
      cmp = yield(array[j], array[j + 1])

      next unless cmp.positive?

      tmp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = tmp
    end
  end

  array
end

p bubble_sort_by(%w[hill hel world]) { |left, right| left.length - right.length }
