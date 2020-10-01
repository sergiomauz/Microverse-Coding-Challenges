class Node:
  def __init__(self, value):
    self.value = value
    self.next = None
    
class LinkedList:
  def __init__(self):
    self.first = None
    self.last = None
    self.count = 0
  
  def add(self, value):
    if (self.last):
      new_node = Node(value)
      self.last.next = new_node
      self.last = self.last.next
    else:
      self.first = Node(value)
      self.last = self.first
    
    self.count += 1
    
  def get(self, index):
    if (index >= 0 and index < self.count):
      current_node = self.first
      for i in range(0, index):
        current_node = current_node.next
      
      return current_node.value
    else:
      return None
    
list = LinkedList()
list.add(3)
list.add(5)

print(list.get(1))
# => 5
