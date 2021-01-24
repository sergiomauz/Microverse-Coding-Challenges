def insertion_sort(array)
  for i in 1...(array.length)
    current = array[i]
    j = i - 1
    while j >= 0 && current < array[j]
      array[j + 1] = array[j]
      $insertion_sort_counter += 1
      j -= 1
    end
    array[j + 1] = current
  end
end

def advanced_quicksort(array, low_index = 0, high_index = array.length - 1)
  if low_index < high_index
    pivot = partition(array, low_index, high_index)
    
    advanced_quicksort(array, low_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, high_index)
  end
end

def partition(array, low_index, high_index)
  pivot = array[high_index]
  j = low_index
  for i in low_index...high_index
    if array[i] < pivot
      array[i], array[j] = array[j], array[i]
      
      $quick_sort_counter += 1
      j += 1
    end
  end
  
  array[high_index], array[j] = array[j], array[high_index]
  $quick_sort_counter += 1
  j
end

def quicksort_running_time(array)  
  $quick_sort_counter = 0
  $insertion_sort_counter = 0
  
  insertion_sort(array.clone)

  advanced_quicksort(array.clone)

  $insertion_sort_counter - $quick_sort_counter
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
