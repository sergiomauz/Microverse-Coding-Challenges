def binary_tree_height(array_tree):    
  level = 1
  while (len(array_tree) > (2 ** level) - 1):
    level += 1
    
  return level

print(binary_tree_height([2, 7, 5, 2, 6, 0, 9]))
# => 3