def move_text(start, finish)
  "#{start}->#{finish}"
end

def move_disk(num_discs, start, tempo, finish)
  if num_discs == 1
    puts move_text(start, finish)
    return
  end

  move_disk(num_discs - 1, start, finish, tempo)

  puts move_text(start, finish)

  move_disk(num_discs - 1, tempo, start, finish)
end

def hanoi_steps(num_discs)
  move_disk(num_discs, 1, 2, 3)
end


hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3