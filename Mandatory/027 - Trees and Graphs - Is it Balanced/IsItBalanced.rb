class Node
	attr_reader :data
  attr_accessor :left, :right
  
  def initialize data
    @data = data
  end
end

def array_to_tree(array, index = 0)
  return nil if index >= array.length || array[index] == 0

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2 * index + 1)
  node.right = array_to_tree(array, 2 * index + 2)

  node
end

def recursive_tree_height(node)
  return 0 if node.nil?
  return 1 if node.left == nil && node.right == nil
  
  [recursive_tree_height(node.left), recursive_tree_height(node.right)].max + 1
end

def tree_height(node)  
  recursive_tree_height(node)
end

def recursive_balanced?(node)
  return true if node.nil?
  
  left_height = tree_height(node.left)
  
  right_height = tree_height(node.right)
  
  return false if (left_height - right_height).abs > 1
  
  recursive_balanced?(node.left) && recursive_balanced?(node.right)
end


def balanced_tree?(array)
  root = array_to_tree(array, 0)
  
  recursive_balanced?(root)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true