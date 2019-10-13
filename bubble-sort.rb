# bubble sort method
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