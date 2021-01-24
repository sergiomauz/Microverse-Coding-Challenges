def find_pairs(array, k)
  visited = {}
  pairs = []

  array.each do |value|
    unless visited[value]
      visited[value] = true
      if array.any?(k - value)
        visited[k - value] = true 
        pairs.push([value, k - value])
      end      
    end
    
  end

  pairs
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]
