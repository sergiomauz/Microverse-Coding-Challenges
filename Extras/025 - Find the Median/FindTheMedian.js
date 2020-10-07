function findMedian(arr) {
  arr.sort((a, b) => b - a);

  let len = arr.length;

  if (len % 2 > 0) {
    return arr[(len - 1) / 2];
  } else {
    return (arr[len / 2] + arr[(len / 2) - 1]) / 2;
  }
}

console.log(findMedian([2, 6, 4, 5, 7]));
