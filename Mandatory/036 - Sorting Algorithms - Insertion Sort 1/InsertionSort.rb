def insertion_sort(array)
  index_eval = array.length - 1

  while index_eval > 0 do
    index_loop = index_eval - 1
    current = array[index_eval]
  
    if current < array[index_loop]
      while index_loop >= 0 && current < array[index_loop] do
        array[index_loop + 1] = array[index_loop]     
        index_loop -= 1
        puts array.join(' ')  
      end
      array[index_loop + 1] = current
      puts array.join(' ')
    end 
  
    index_eval -= 1
  end    
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 3, 6, 9, 2])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
