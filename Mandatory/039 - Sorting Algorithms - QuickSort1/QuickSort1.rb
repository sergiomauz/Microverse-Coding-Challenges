def partition(array)  
  pivot = array.first
  left = []
  right = []
  for index in 1...array.length
    left.push(array[index]) if array[index] <= pivot
    right.push(array[index]) if array[index] > pivot
  end
  left.push(pivot).push(*right)
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
