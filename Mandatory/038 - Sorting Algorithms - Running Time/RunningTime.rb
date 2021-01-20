def running_time(array)
  accum = 0
  index_eval = 1

  while index_eval < array.length do    
    current = array[index_eval]
    index_loop = index_eval - 1

    while index_loop >= 0 && array[index_loop] > current do
      array[index_loop + 1] = array[index_loop]     
      accum += 1
      index_loop -= 1              
    end
    array[index_loop + 1] = current      

    index_eval += 1
  end      

  accum
end

puts running_time([2, 1, 3, 1, 2])
# => 4

puts running_time([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
# => 45

puts running_time([406, 157, 415, 318, 472, 46, 252, 187, 364, 481, 450, 90, 390, 35, 452, 74, 196, 312, 142, 160, 143, 220, 483, 392, 443, 488, 79, 234, 68, 150, 356, 496, 69, 88, 177, 12, 288, 120, 222, 270, 441, 422, 103, 321, 65, 316, 448, 331, 117, 183, 184, 128, 323, 141, 467, 31, 172, 48, 95, 359, 239, 209, 398, 99, 440, 171, 86, 233, 293, 162, 121, 61, 317, 52, 54, 273, 30, 226, 421, 64, 204, 444, 418, 275, 263, 108, 10, 149, 497, 20, 97, 136, 139, 200, 266, 238, 493, 22, 17, 39])
# => 2856
