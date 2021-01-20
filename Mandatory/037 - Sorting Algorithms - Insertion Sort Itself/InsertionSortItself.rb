def sort_itself(array)
  index_eval = 1

  while index_eval < array.length do    
    current = array[index_eval]
    index_loop = index_eval - 1

    while index_loop >= 0 && array[index_loop] > current do
      array[index_loop + 1] = array[index_loop]     
      index_loop -= 1              
    end
    array[index_loop + 1] = current      

    puts array.join(' ')

    index_eval += 1
  end      
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9
