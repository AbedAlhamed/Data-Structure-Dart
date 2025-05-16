class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

List<ListNode> findMiddleNodes(ListNode? head) {
  // Edge case: empty list
  if (head == null) {
    print("The list is empty.");
    return [];
  }

  int length = 0;
  ListNode? current = head;

  // First pass: count the length
  while (current != null) {
    length++;
    current = current.next;
  }

  List<ListNode> result = [];
  current = head;

  if (length.isOdd) {
    // Case: odd number of nodes
    int middleIndex = length ~/ 2;
    for (int i = 0; i < middleIndex; i++) {
      current = current?.next;
    }
    if (current != null) result.add(current);
  } else {
    // Case: even number of nodes
    int firstMiddleIndex = (length ~/ 2) - 1;
    for (int i = 0; i < firstMiddleIndex; i++) {
      current = current?.next;
    }
    if (current != null) {
      result.add(current);
      if (current.next != null) result.add(current.next!);
    }
  }

  return result;
}

void printList(ListNode? head) {
  if (head == null) {
    print("List is empty.");
    return;
  }

  while (head != null) {
    print(head.val);
    head = head.next;
  }
}

void main() {
  // Example 1: Odd length list
  ListNode head1 = ListNode(
    1,
    ListNode(2, ListNode(3, ListNode(4, ListNode(5)))),
  );
  print("Original list (odd length):");
  printList(head1);
  var middle1 = findMiddleNodes(head1);
  print("\nMiddle node(s): ${middle1.map((node) => node.val).join(', ')}");

  // Example 2: Even length list
  ListNode head2 = ListNode(10, ListNode(20, ListNode(30, ListNode(40))));
  print("\n\nOriginal list (even length):");
  printList(head2);
  var middle2 = findMiddleNodes(head2);
  print("\nMiddle node(s): ${middle2.map((node) => node.val).join(', ')}");

  // Example 3: Empty list
  ListNode? head3 = null;
  print("\n\n Original list (empty):");
  printList(head3);
  var middle3 = findMiddleNodes(head3);
  print(
    "\nMiddle node(s): ${middle3.isEmpty ? "None (empty list)" : middle3.map((node) => node.val).join(', ')}",
  );
}
