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
        previous_node = self.__get_node(index - 1)
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
        self.last = self.__get_node(index - 1)
        old_node = None
        self.count += 1
      elif (index > 0 and index < self.count):
        previous_node = self.__get_node(index - 1)
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


list = LinkedList()

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

print(list.get(2))
# => 11

print(list.get(3))
# => 5