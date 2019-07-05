def bubble_sort(array)
    n = array.length
    loop do
      swapped = false
  
      (n-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end
  
      break if not swapped
    end
    return array
end
def bubble_sort_by(array)
    n = array.length
    (n-1).times do
      swapped = false
  
      (n-1).times do |i|
        if yield(array[i], array[i+1]) > 0
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end
  
      break if not swapped
    end
    return array
end
  
  
puts "BubleSorted array: "
puts bubble_sort([5,4,9,3,8])
puts "BubleSortedBy array: "
puts bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}
