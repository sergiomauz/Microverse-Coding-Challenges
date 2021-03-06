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
    this.list_mins = new LinkedList();
  }

  push(value) {
    if (this.list.first) {
      this.list.add_at(0, value);
      if (value < this.list_mins.first.value) { this.list_mins.add_at(0, value); }
    } else {
      this.list.add(value);
      this.list_mins.add(value);
    }
  }

  pop() {
    let popped = -1;
    if (this.list.first) {
      popped = this.list.get(0);
      this.list.remove(0);

      if (popped === this.list_mins.first.value) { this.list_mins.remove(0); }
    }
    return popped;
  }

  min() {
    return this.list_mins.first.value;
  }
}

const stack = new Stack();
stack.push(3);
stack.push(5);
console.log(stack.min());
// => 3

stack.pop();
stack.push(7);
console.log(stack.min());
// => 3

stack.push(2);
console.log(stack.min());
// => 2

stack.pop();
console.log(stack.min());
// => 3