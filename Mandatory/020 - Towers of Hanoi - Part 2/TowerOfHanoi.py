def move_text(start, finish):
  return f"{start}->{finish}"

def move_disk(num_discs, start, tempo, finish):
  if (num_discs == 1):
    print(move_text(start, finish))
    return
  
  move_disk(num_discs - 1, start, finish, tempo)

  print(move_text(start, finish))

  return move_disk(num_discs - 1, tempo, start, finish)
  
def hanoi_steps(num_discs):
  return move_disk(num_discs, 1, 2, 3)


hanoi_steps(2)
# => 1 -> 2 
#    1 -> 3 
#    2 -> 3

hanoi_steps(3)
# => 1 -> 3 
#    1 -> 2
#    3 -> 2
#    1 -> 3
#    2 -> 1
#    2 -> 3
#    1 -> 3

hanoi_steps(4)
# => 1 -> 2
#    1 -> 3
#    2 -> 3
#    1 -> 2
#    3 -> 1
#    3 -> 2
#    1 -> 2
#    1 -> 3
#    2 -> 3
#    2 -> 1
#    3 -> 1
#    2 -> 3
#    1 -> 2
#    1 -> 3
#    2 -> 3