# RUBY-PROJECT-Advanced-Building-Blocks---Bubble-Sort
RUBY- 1st Project in Advanced Building Blocks - Bubble Sort# Project 1: Bubble Sort

## PROJECT: ADVANCED BUILDING BLOCKS (Project 1: Bubble Sort)

This is the first project of the main `Ruby` curriculum at [Microverse](https://www.microverse.org/) - @microverseinc

### [Assignment link](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks)

#### The objective are as follows:

1. Build a method `#bubble_sort` that takes an array and returns a sorted array.

``` rb

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
  ```

2. Build another method `#bubble_sort_by` which sorts an array by accepting a block

``` rb
# frozen_string_literal: true

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
```

