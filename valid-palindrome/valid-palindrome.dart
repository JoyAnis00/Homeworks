//A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

//Given a string s, return true if it is a palindrome, or false otherwise.
void main() {
  print(isPalindrome('race a car'));
}

bool isPalindrome(String s) {
  List<String> mystring = [];
  for (var i = 0; i < s.length; i++) {
    String char = s[i].toLowerCase();
    bool isletter = char.codeUnitAt(0) >= 'a'.codeUnitAt(0) &&
        char.codeUnitAt(0) <= 'z'.codeUnitAt(0);
    bool isdigit = char.codeUnitAt(0) >= '0'.codeUnitAt(0) &&
        char.codeUnitAt(0) <= '9'.codeUnitAt(0);
    if (isletter || isdigit) {
      mystring.add(char);
    }
  }

  if (mystring.join('') == mystring.reversed.join('') || mystring == '') {
    return true;
  }
  return false;
}
