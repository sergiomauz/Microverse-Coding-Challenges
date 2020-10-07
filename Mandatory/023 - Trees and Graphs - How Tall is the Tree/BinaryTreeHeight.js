function binaryTreeHeight(arrayTree) {
  let level = 1;
  while (arrayTree.length > (Math.pow(2, level)) - 1) {
    level += 1
  }

  return level;
}

console.log(binaryTreeHeight([2, 7, 5, 2, 6, 0, 9]));
// => 3