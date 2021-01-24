def depth_first_search(graph)
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

  path  
end

p depth_first_search({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]
