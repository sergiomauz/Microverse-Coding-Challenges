class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  attr_accessor :root

  def initialize
    @root = nil
  end
  
  def insert(node, parent)
    if @root.nil?
      @root = node
      return 
    end

    if parent.nil?
      return node
    end

    if node.data <= parent.data
      parent.left = insert(node, parent.left)
    else
      parent.right = insert(node, parent.right)
    end    

    return parent
  end

  def pre_order(node)
    if node == nil
      return ''
    end
  
    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
  
  def post_order(node)
    if node == nil
      return ''
    end
    
    result = post_order(node.left)
    result += post_order(node.right)
    result += "#{node.data} "
  end  
end

def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e), tree.root) }
  tree.pre_order(tree.root)
end

# puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
puts binary_search_tree([5, 3, 7, 1, 2, 6, 8])

