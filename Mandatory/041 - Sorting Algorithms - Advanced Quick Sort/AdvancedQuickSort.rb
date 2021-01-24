def partition(array, low_index, high_index)
  pivot = array[high_index]
  j = low_index
  for i in low_index...high_index
    if array[i] < pivot
      array[i], array[j] = array[j], array[i]
      j += 1
    end
  end
  array[high_index], array[j] = array[j], array[high_index]
  
  j
end

def advanced_quicksort(array, low_index = 0, high_index = array.length - 1)
  if low_index < high_index
    pivot = partition(array, low_index, high_index)
    
    puts "#{array}"

    advanced_quicksort(array, low_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, high_index)
  end
end


advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9
