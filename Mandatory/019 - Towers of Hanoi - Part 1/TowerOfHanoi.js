function move_text(from, to) {
  return `${from}->${to}`;
}

function move(starting, goal) {
  let temporary = [1, 2, 3].filter(item => ![starting, goal].includes(item))[0];

  let result = move_text(starting, temporary) + ' ';

  result += move_text(starting, goal) + ' ';

  result += move_text(temporary, goal);

  return result;
}

console.log(move(1, 3));
// => 1->2 1->3 2->3

console.log(move(2, 3));
// => 2->1 2->3 1->3

