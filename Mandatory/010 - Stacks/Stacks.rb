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

  def add_at(index, value)
    if @last
      if index == 0
        new_node = Node.new(value)
        new_node.next = @first      
        @first = new_node
        @count += 1
      elsif index == @count
        new_node = Node.new(value)
        @last.next = new_node
        @last = new_node
        @count += 1
      elsif index > 0 && index < @count
        new_node = Node.new(value)
        previous_node = get_node(index)
        new_node.next = previous_node.next
        previous_node.next = new_node
        @count += 1
      end
    elsif index == 0
      @first = Node.new(value)
      @last = @first
      @count += 1
    end    
  end

  def remove(index)
    if @last
      if index == 0
        old_node = @first
        @first = @first.next
        old_node = nil
        @count -= 1
      elsif index == @count - 1
        old_node = @last
        @last = get_node(index)
        old_node = nil
        @count -= 1
      elsif index > 0 && index < @count
        previous_node = get_node(index)
        old_node = previous_node.next
        previous_node.next = old_node.next
        old_node = nil
        @count -= 1
      end    
    end

    if @count == 0
      @first = nil
      @last = nil
    elsif @count == 1
      @first = @last if @first
      @last = @first if @last
    end
  end

  def get(index)
    node = get_node(index)
    return node.value if node
    nil
  end

  private

  def get_node(index)
    if @first
      if index >= 0 && index < @count      
        current_node = @first
        index.times { |item| current_node = current_node.next }
        current_node
      else
        nil
      end
    else
      nil
    end
  end
end

class Stack
  attr_accessor :list

  def initialize
    @list = nil
  end

  def push(value)       
    if @list
      @list.add_at(0, value)
    else
      @list = LinkedList.new
      @list.add(value)
    end    
  end

  def pop
    if @list      
      popped = @list.get(0)      
      @list.remove(0)
      popped
    end
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
