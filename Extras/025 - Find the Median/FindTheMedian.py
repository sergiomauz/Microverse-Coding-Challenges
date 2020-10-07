def findMedian(arr):
  sorted_arr = arr[:]
  sorted_arr.sort()  
  length = len(sorted_arr)

  if length % 2 > 0:
    return sorted_arr[(length - 1) // 2]
  else:
    return (sorted_arr[length // 2] + sorted_arr[(length // 2) - 1]) / 2
  
print(findMedian([2, 6, 4, 5, 7, 9]))
