def appears_most_times(array)
  h = {}

  array.each do |item|
    if h.has_key?(item.to_s)      
      h[item.to_s] += 1
    else
      h[item.to_s] = 1
    end
  end  
  pair_array = h.max_by { |key, value| value }

  pair_array[0].to_i  
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])
# => 4376


