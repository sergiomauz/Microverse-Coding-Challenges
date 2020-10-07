def leftmost_nodes_sum(array)
  row = 0
  sum = 0
  while 2 ** row < array.length
    sum += array[(2 ** row) - 1]
    row += 1
  end
  
  sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11

