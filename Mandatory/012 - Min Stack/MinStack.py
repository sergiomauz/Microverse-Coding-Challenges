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


  def add_at(self, index, value):
    if (self.last):
      if (index == 0):
        new_node = Node(value)
        new_node.next = self.first
        self.first = new_node
        self.count += 1
      elif (index == self.count):
        new_node = Node(value)
        self.last.next = new_node
        self.last = new_node
        self.count += 1
      elif (index > 0 and index < self.count):
        new_node = Node(value)
        previous_node = self.__get_node(index)
        new_node.next = previous_node.next
        previous_node.next = new_node
        self.count += 1  
    elif (index == 0):
      self.first = Node(value)
      self.last = self.first
      self.count += 1


  def remove(self, index):
    if (self.last):
      if (index == 0):
        old_node = self.first
        self.first = self.first.next
        old_node = None
        self.count += 1
      elif (index == self.count - 1):
        old_node = self.last
        self.last = self.__get_node(index)
        old_node = None
        self.count += 1
      elif (index > 0 and index < self.count):
        previous_node = self.__get_node(index)
        old_node = previous_node.next
        previous_node.next = old_node.next
        old_node = None
        self.count += 1

    if (self.count == 0):
      self.first = None
      self.last = None
    elif (self.count == 1):
      if (self.first): self.first = self.last
      if (self.last): self.last = self.first


  def get(self, index):
    node = self.__get_node(index)
    if (node): 
      return node.value
    else:
      return None

  def __get_node(self, index):
    if (self.first):
      if (index >= 0 and index < self.count):
        current_node = self.first
        for _ in range(0, index):
          current_node = current_node.next
        
        return current_node
      else:
        return None
    else:
      return None

class Stack:
  def __init__(self):
    self.list = LinkedList()
    self.list_mins = LinkedList()

  def push(self, value):
    if (self.list.first):
      self.list.add_at(0, value)
      if (value < self.list_mins.first.value):
        self.list_mins.add_at(0, value)        
    else:
      self.list.add(value)
      self.list_mins.add(value)        

  def pop(self):
    popped = -1
    if (self.list.first):
      popped = self.list.get(0)
      self.list.remove(0)
      if (popped == self.list_mins.first.value):
        self.list_mins.remove(0)
        
    return popped
  
  def min(self):
    return self.list_mins.first.value
  
  

stack = Stack()
stack.push(3)
stack.push(5)
print(stack.min())
# => 3

stack.pop()
stack.push(7)
print(stack.min())
# => 3

stack.push(2)
print(stack.min())
# => 2

stack.pop()
print(stack.min())
# => 3  