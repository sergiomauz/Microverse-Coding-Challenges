class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize(data)
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

def recursive_search_tree?(node, min = nil, max = nil)
  return true if node.nil?
  
  return false if min && node.data < min

  return false if max && node.data > max
    
  recursive_search_tree?(node.left, min, node.data) && recursive_search_tree?(node.right, node.data, max)
end

def search_tree?(array)
	root = array_to_tree(array, 0)
  
  recursive_search_tree?(root)
end

puts search_tree?([19, 9, 26, 4, 13, 17, 29])
# => false

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false
