def duplicates(arr1, arr2)
  dif = {}
  arr2.each do |item_arr2|
    dif[item_arr2] = 1 if arr2.count { |item| item == item_arr2} > arr1.count { |item| item == item_arr2} && dif[item_arr2].nil?
  end

  dif.keys.sort
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]
