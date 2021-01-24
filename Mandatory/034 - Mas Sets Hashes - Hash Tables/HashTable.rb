def hash_table(arr)  
  ht = {}
  (0..arr.length-1).each { |i| ht[i] = nil }
  
  arr.each do |value|
    mod = value.abs % 11
    
    unless ht[mod]
      ht[mod] = [value] 
    else 
      ht[mod].push(value) 
    end    
  end

  new_ht_array = []
  ht.each do |key, values_list|
    new_ht_array.push(*values_list) if values_list
  end

  new_ht_array
end

# def hash_table(array)
#   # write your code here
#   fake_hash = []
  
#   array.each do |element|
#     key = element.abs % 11
#     if fake_hash[key]
#       fake_hash[key] << element
#     else
#       fake_hash[key] = [element]
#     end
#   end
  
#   fake_hash.compact.flatten
# end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]

p hash_table([2367, -65325, 134, -185007, 3291, 7832, -65326, 789, 980, -3289, 3])
# => [7832, -3289, 980, 2367, 134, 3291, 3, -65325, -65326, 789, -185007]
