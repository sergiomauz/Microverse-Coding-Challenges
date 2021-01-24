def merge_sort(array_one, array_two)  
  result = []  
  i = 0
  j = 0

  while i < array_one.length && j < array_two.length
    if array_one[i] <= array_two[j]
      result << array_one[i]
      i += 1
    else
      result << array_two[j]
      j += 1
    end
  end

  while i < array_one.length
    result << array_one[i]
    i += 1
  end

  while j < array_two.length
    result << array_two[j]
    j += 1
  end
  result
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]