//Challenge 1: Print in Reverse

void main() {
  reverseListUsingStack(['Meqati', 'J.', 'M.', 'abd Al_hameed']);
}

void reverseListUsingStack(List<dynamic> list) {
  List<dynamic> stack = [];

  //   (pushing in stack)
  for (var item in list) {
    stack.add(item);
  }

  // pop from stack
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}
