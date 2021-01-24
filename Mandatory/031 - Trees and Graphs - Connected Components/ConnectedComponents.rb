def connected_graph?(graph)
  discovered = Array.new(graph.keys.length, false)
  
  path = []
  stack = []
  stack.push(0)
  discovered[0] = true
  
  while stack.length > 0
    current = stack.pop  
    path.push(current)

    graph[current].reverse_each do |adjacent|
      unless discovered[adjacent]
        stack.push(adjacent)
        discovered[adjacent] = true
      end
    end
  end

  discovered.all?(true)
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 3, 5], 
  3 => [2, 5], 
  4 => [1], 
  5 => [2, 3]
})
# => false

