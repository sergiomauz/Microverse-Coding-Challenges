class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_accessor :first, :last, :count

  def initialize
    @first = nil
    @last = nil
    @count = 0
  end

  def add(value)       
    if @last
      new_node = Node.new(value)
      @last.next = new_node
      @last = @last.next      
    else
      @first = Node.new(value)
      @last = @first
    end
    @count += 1
  end

  def get(index)
    if index >= 0 && index < @count      
      current_node = @first
      index.times { |item| current_node = current_node.next }
      current_node.value
    else
      nil
    end
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5