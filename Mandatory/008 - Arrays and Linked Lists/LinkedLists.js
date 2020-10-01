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

  get(index) {
    if (index >= 0 && index < this.count) {
      let current_node = this.first;
      for (let i = 0; i < index; i += 1) { current_node = current_node.next; }

      return current_node.value;
    } else {
      return null;
    }
  }
}

const list = new LinkedList();
list.add(3)
list.add(5)

console.log(list.get(1));
// => 5
