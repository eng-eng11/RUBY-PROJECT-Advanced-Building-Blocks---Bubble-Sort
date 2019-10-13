# RUBY-PROJECT-Advanced-Building-Blocks---Bubble-Sort
RUBY- 1st Project in Advanced Building Blocks - Bubble Sort# Project 1: Bubble Sort

## PROJECT: ADVANCED BUILDING BLOCKS (Project 1: Bubble Sort)

This is the first project of the main `Ruby` curriculum at [Microverse](https://www.microverse.org/) - @microverseinc


### [Assignment link](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks)

#### The objective are as follows:

1. Build a method `#bubble_sort` that takes an array and returns a sorted array.

``` rb

def bubble_sort(array)
    switch = true
    while switch
      switch = false
      (0...array.length - 1).each do |i|  
        if array[i] > array[i + 1] # if this condition is not true switch maintains false
          array[i], array[i + 1] = array[i + 1], array[i]
          switch = true # loop again
        end 
      end
    end
    array
  end
  ```

2. Build another method `#bubble_sort_by` which sorts an array by accepting a block

``` rb
def bubble_sort_by(array)
    switch = true
    while switch
      switch = false
      (0...array.length - 1).each do |i|
        if yield(array[i], array[i + 1]).positive? 
          array[i], array[i + 1] = array[i + 1], array[i]
          switch = true
        end
      end
    end
    array
  end
  
  # tests 
  puts bubble_sort([4,3,78,2,0,2])
  puts ' '
  puts bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length}
```


