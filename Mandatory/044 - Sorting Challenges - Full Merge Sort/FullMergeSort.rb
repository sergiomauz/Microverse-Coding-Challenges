def full_merge_sort(array)
  ht = {}
  array.each do |item|
    temp_array = item.split(' ')
    key = temp_array[0].to_i
    value = temp_array[1]
    if ht[key]
      ht[key].push(value)
    else
      ht[key] = [value]
    end
  end

  sorted_array = []
  ht.sort.to_h.values.each { |item| sorted_array.push(*item) }

  p sorted_array
end

full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
