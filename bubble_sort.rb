def bubble_sort arr
  for i in (0...arr.length)
    for j in (0...arr.length)
      current = arr[j]                          # current = element iniside the "bubble"
      if j+1 < arr.length
        if current > arr[j+1]                  
          arr[j] = arr[j+1]                     # swaps the element inside the bubble
          arr[j+1] = current                    # ... and the next one
        elsif current < arr[j+1]  
          current = arr[j+1]                    # true when bubble is smaller than next one, updates bubble
        end
      end
    end 
  end
  return arr
end

def bubble_sort_by arr
  for i in (0...arr.length)
    for j in (0...arr.length)
      current = arr[j]                            # current = element iniside the "bubble"
      if j+1 < arr.length
        result = yield(current, arr[j+1])
        if result > 0
          arr[j] = arr[j+1]                       # swaps the element inside the bubble
          arr[j+1] = current                      # ... and the next one
        elsif result < 0 
          current = arr[j+1]                      # true when bubble is smaller than next one, updates bubble
        end
      end
    end 
  end
  return arr
end

print bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

print bubble_sort_by(["hi","hello","hey"]) { |left,right|
  left.length - right.length
}
# => ["hi", "hey", "hello"]
