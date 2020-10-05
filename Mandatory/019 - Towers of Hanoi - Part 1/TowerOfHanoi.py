def move_text(start, finish):
  return f"{start}->{finish}"

def move(starting, goal):
  temporary = list(filter(lambda item: not (item in [starting, goal]), [1, 2, 3]))[0]
  
  result = move_text(starting, temporary) + ' '
  
  result += move_text(starting, goal) + ' '
  
  result += move_text(temporary, goal)
  
  return result

print(move(1, 3))
# => 1->2 1->3 2->3

print(move(2, 3))
# => 2->1 2->3 1->3
