function leftmost_nodes_sum(array) {
  let row = 0;
  let sum = 0;
  while (Math.pow(2, row) < array.length) {
    sum += array[Math.pow(2, row) - 1]
    row += 1;
  }

  return sum;
}

console.log(leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9]));
// => 11