class Node {
  constructor(data) {
    this.data = data;
    this.left = null;
    this.right = null;
  }
}

function array_to_tree(array, i) {
  if (i >= array.length || array[i] === 0) {
    return null;
  }

  let node = new Node(array[i])
  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  return node;
}

function pre_order(node) {
  if (!node) {
    return '';
  }

  let result = `${node.data} `;
  result += pre_order(node.left);
  result += pre_order(node.right);

  return result;
}

function post_order(node) {
  if (!node) {
    return '';
  }

  let result = post_order(node.left);
  result += post_order(node.right);
  result += `${node.data} `;

  return result;
}


let tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0);
console.log(post_order(tree));
// => 3 4 1 5 6 2 10
