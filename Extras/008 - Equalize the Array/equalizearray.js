function equalizeArray(arr) {
  const sortedArray = [...arr].sort();

  let countValues = [];
  let lastItem = NaN;
  let totalCount = 0;

  sortedArray.forEach((item) => {
    if (item !== lastItem) {
      countValues.push({
        value: item,
        count: 1
      });
    } else {
      countValues[countValues.length - 1].count += 1;
    }
    lastItem = item;
  });

  countValues.sort((a, b) => b.count - a.count).slice(1).forEach((item) => {
    totalCount += item.count;
  });

  return totalCount;
}

console.log(equalizeArray([2, 1, 2, 3]))