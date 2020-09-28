def equalizeArray(arr):
  sortedArray = sorted(arr)
  countValues = []
  lastItem = None
  totalCount = 0
  
  for item in sortedArray:
    if item != lastItem:
      countValues.append({
        "value": item,
        "repetitions": 1
      })
    else:
      countValues[len(countValues) - 1]["repetitions"] += 1
          
    lastItem = item;    
  
  countValues.sort(key = lambda item: item.get("repetitions"), reverse = True)
  countValues.pop(0)
  
  for item in countValues:
    totalCount += item["repetitions"]
  
  return totalCount


print(equalizeArray([2, 1, 2, 3]))
