def bubble_sort_by(arr)
    arr.each do |left,right|
        i = 0
        swap = 0

        while i < arr.length-1 do
            if block_given?
                yield_ = yield(arr[i], arr[i+1])
            end

            yield_ = arr[i] > arr[i+1]
            if yield_
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
            end
            i += 1
            swap += 1
        end
        break if swap == 0  
    end
    arr
end

p bubble_sort_by(["hill", "hel", "world"]){|left, right| left.length - right.length}
