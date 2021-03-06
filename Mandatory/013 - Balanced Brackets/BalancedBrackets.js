class Node {
  constructor(value) {
    this.value = value;
    this.next = null;
  }
}

class LinkedList {
  constructor() {
    this.first = null;
    this.last = null;
    this.count = 0;
  }

  get_node(index) {
    if (this.first) {
      if (index >= 0 && index < this.count) {
        let current_node = this.first;
        for (let i = 0; i < index; i += 1) { current_node = current_node.next }

        return current_node;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  add(value) {
    if (this.last) {
      let new_node = new Node(value);
      this.last.next = new_node;
      this.last = this.last.next;
    } else {
      this.first = new Node(value);
      this.last = this.first
    }
    this.count += 1;
  }

  add_at(index, value) {
    let new_node;
    let previous_node;

    if (this.last) {
      if (index === 0) {
        new_node = new Node(value);
        new_node.next = this.first;
        this.first = new_node;
        this.count += 1;
      } else if (index === this.count) {
        new_node = new Node(value);
        this.last.next = new_node;
        this.last = new_node;
        this.count += 1;
      } else if (index > 0 && index < this.count) {
        new_node = new Node(value);
        previous_node = this.get_node(index);
        new_node.next = previous_node.next;
        previous_node.next = new_node;
        this.count += 1;
      }
    } else {
      this.first = new Node(value);
      this.last = this.first;
      this.count += 1;
    }
  }

  remove(index) {
    let old_node;

    if (this.last) {
      if (index === 0) {
        old_node = this.first;
        this.first = this.first.next;
        old_node = null;
        this.count -= 1;
      } else if (index === this.count - 1) {
        old_node = this.last;
        this.last = this.get_node(index);
        old_node = null;
        this.count -= 1
      } else if (index > 0 && index < this.count) {
        previous_node = this.get_node(index);
        old_node = previous_node.next;
        previous_node.next = old_node.next;
        old_node = null;
        this.count -= 1;
      }
    }

    if (this.count === 0) {
      this.first = null;
      this.last = null;
    } else if (this.count === 1) {
      if (this.first) { this.first = this.last; }
      if (this.last) { this.last = this.first; }
    }
  }

  get(index) {
    const node = this.get_node(index);
    if (node) {
      return node.value;
    } else {
      return null;
    }
  }
}

class Stack {
  constructor() {
    this.list = new LinkedList();
  }

  push(value) {
    if (this.list.first) {
      this.list.add_at(0, value);
    } else {
      this.list.add(value);
    }
  }

  pop() {
    let popped = -1;
    if (this.list.first) {
      popped = this.list.get(0);
      this.list.remove(0);
    }
    return popped;
  }
}

function balanced_brackets(evalString) {
  let array_string = evalString.split('');
  let evaluated_array = [];
  let forced_finish = false;
  let temp_stack = new Stack();
  let item;

  array_string.forEach(st => {
    if (['(', ')', '{', '}', '[', ']'].includes(st)) {
      evaluated_array.push(st);
    }
  });

  for (let index = 0; index < evaluated_array.length; index += 1) {
    item = evaluated_array[index];
    if (item === '(') {
      temp_stack.push(')');
    } else if (item === '[') {
      temp_stack.push(']');
    } else if (item === '{') {
      temp_stack.push('}');
    } else {
      if (!(temp_stack.list.first)) {
        forced_finish = true;
        break;
      } else if (item === temp_stack.list.first.value) {
        temp_stack.pop();
      }
    }
  }

  return (!(temp_stack.list.first) && !forced_finish);
}


console.log(balanced_brackets('(hello)[world]'));
// => true

console.log(balanced_brackets('([)]'));
// => false

console.log(balanced_brackets('[({}{}{})([])]'));
// => true
