def findMedian(arr)
  sorted_arr = arr.sort()

  len = sorted_arr.length

  if len % 2 > 0
    sorted_arr[(len - 1) / 2]
  else
    (sorted_arr[len / 2] + sorted_arr[(len / 2) - 1]) / 2
  end
end

p findMedian([2, 6, 4, 5, 7])
