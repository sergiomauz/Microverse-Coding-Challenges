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
        previous_node = get_node(index - 1)        
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
        @last = get_node(index - 1)
        old_node = nil
        @count -= 1
      elsif index > 0 && index < @count
        previous_node = get_node(index - 1)
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



list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
