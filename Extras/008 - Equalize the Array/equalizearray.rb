def equalizeArray(arr)
  sortedArray = arr.sort()
  countValues = []
  lastItem = nil
  totalCount = 0

  sortedArray.each do |item|
    if item != lastItem 
      countValues.push({
        value: item,
        repetitions: 1
      });
    else
      countValues[countValues.length - 1][:repetitions] += 1;
    end
    lastItem = item;
  end
  
  countValues = countValues.sort { |a, b| b[:repetitions] - a[:repetitions] }
  countValues.delete_at(0)

  countValues.each do |item|
    totalCount += item[:repetitions];
  end
  
  totalCount
end

p equalizeArray([2, 1, 2, 3])
