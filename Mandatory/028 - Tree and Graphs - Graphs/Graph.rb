def graph(hash_graph)
  try_to_find = 4
  start_at = 0
  limit = 100
  
  eval_node = hash_graph[start_at][0]
  route = [start_at]
  while eval_node != try_to_find && limit > 0 do
    route.push(eval_node)
    eval_node = hash_graph[eval_node][0]
    limit -= 1
  end
  route.push(eval_node)
  
  route
end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]
