def move_text(from, to)
  "#{from}->#{to}"
end

def move(starting, goal)
  temporary = ([1, 2, 3] - [starting, goal]).first
  
  result = move_text(starting, temporary) + ' '
  
  result += move_text(starting, goal) + ' '
  
  result += move_text(temporary, goal)
  
  result
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
