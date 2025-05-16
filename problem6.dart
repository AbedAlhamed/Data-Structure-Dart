class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

ListNode? removeAllOccurrences(ListNode? head, int target) {
  // Handle leading nodes that need to be removed
  while (head != null && head.val == target) {
    head = head.next;
  }

  // Current pointer for traversal
  ListNode? current = head;

  // Traverse and remove nodes with the target value
  while (current != null && current.next != null) {
    if (current.next!.val == target) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
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
  // Create a list: 1 → 2 → 6 → 3 → 4 → 6 → 5
  ListNode head = ListNode(
    1,
    ListNode(
      2,
      ListNode(6, ListNode(3, ListNode(4, ListNode(6, ListNode(5))))),
    ),
  );

  print("Original list:");
  printList(head);

  int target = 6;
  ListNode? updatedHead = removeAllOccurrences(head, target);

  print("\nList after removing all occurrences of $target:");
  printList(updatedHead);
}
