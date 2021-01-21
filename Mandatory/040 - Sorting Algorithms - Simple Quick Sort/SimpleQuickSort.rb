def simple_quicksort(array)  
  left = []
  right = []  
  index = 1
  pivot = array.first
  while index < array.length do  
    left.push(array[index]) if array[index] <= pivot
    right.push(array[index]) if array[index] > pivot
    index += 1
  end

  new_array = []

  if left.length > 1 && right.length > 1
    new_array = simple_quicksort(left).push(pivot).push(*simple_quicksort(right))
  elsif left.length > 1
    new_array = simple_quicksort(left).push(pivot).push(*right)
  elsif right.length > 1
    new_array = left.push(pivot).push(*simple_quicksort(right))
  else
    new_array = left.push(pivot).push(*right)
  end

  puts new_array.join(' ')

  new_array
end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10
