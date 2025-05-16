//I had solved this problem on LeetCode, but using Java.
//And this is the link to the problem.
//(https://leetcode.com/problems/reverse-linked-list/solutions/6751423/reverse-linked-list-by-abedalhameedmiqat-gzsm)
class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

ListNode? reverseList(ListNode? head) {
  ListNode? previous = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? next = current.next;
    current.next = previous;
    previous = current;
    current = next;
  }

  return previous;
}

void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    head = head.next;
  }
}

void main() {
  // Create a list: 1 -> 2 -> 3 -> null
  ListNode node3 = ListNode(3);
  ListNode node2 = ListNode(2, node3);
  ListNode head = ListNode(1, node2);

  print("Original list:");
  printList(head);

  ListNode? reversedHead = reverseList(head);

  print("\nReversed list:");
  printList(reversedHead);
}
