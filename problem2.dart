//I had solved this problem on LeetCode, but using Java.
//And this is the link to the problem.
//(https://leetcode.com/problems/valid-parentheses/solutions/6751413/valid-parentheses-by-abedalhameedmiqati-4ea6)
bool isValid(String s) {
  List<String> stack = [];

  for (int i = 0; i < s.length; i++) {
    String c = s[i];

    // If it's an opening bracket
    if (c == '(' || c == '{' || c == '[') {
      stack.add(c);
    } else {
      // Closing bracket found but stack is empty => invalid
      if (stack.isEmpty) return false;

      String open = stack.removeLast();

      // Check if the closing bracket matches the last opened one
      if ((c == ')' && open != '(') ||
          (c == '}' && open != '{') ||
          (c == ']' && open != '[')) {
        return false;
      }
    }
  }

  // Valid only if all brackets were closed properly
  return stack.isEmpty;
}

void main() {
  print('() => ${isValid('()')}');
  print('()[]{} => ${isValid('()[]{}')}');
  print('(] => ${isValid('(]')}');
  print('([)] => ${isValid('([)]')}');
  print('{[]} => ${isValid('{[]}')}');
}
