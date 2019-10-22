# PROJECT: ADVANCED BUILDING BLOCKS

This is our solution to Microverse's first Ruby project. It is a bubble sort algorithm which can be found on the file called 'bubble_sort.rb'.

The project description can be found [here](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks).

A demo for the project can be found [here](https://repl.it/@DavidAuza/Bubble-Sort-Algorithm-Demo).

## Project contributors:

- [David Auza](https://github.com/davidauza-engineer)

- [Falguni Islam](https://github.com/falguniislam) [demo](https://repl.it/@islamfalguni/Bubble-Sort-Algorithm-Demo)


## Code

```ruby
  
# this method sorts a given array of numbers using a bubble sort algorithm
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
  puts arr.join(' ')
end

# this method sorts an array by accepting a block
def bubble_sort_by(array)
  raise 'No block_given' unless block_given?

  len = array.length - 1
  len.step(1, -1) do |a|
    (0...a).each do |i|
      test = yield(array[i], array[i + 1])
      next unless test.positive?

      temp = array[i]
      array[i] = array[i + 1]
      array[i + 1] = temp
    end
  end
  puts array.join(' ')
end

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
# => ["hi", "hey", "hello"]

```
