class Node:
  def __init__(self, data):
    self.data = data
    self.left = None
    self.right = None

def array_to_tree(array, i):
  if (i >= len(array) or array[i] == 0):
    return None

  node = Node(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  return node

def pre_order(node):
  if (not node):
    return ''

  result = f"{node.data} "
  result += pre_order(node.left)
  result += pre_order(node.right)
  
  return result

def post_order(node):
  if (not node):
    return ''
  
  result = post_order(node.left)
  result += post_order(node.right)
  result += f"{node.data} "
  
  return result

tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0)
print(post_order(tree))
#=> 3 4 1 5 6 2 10
