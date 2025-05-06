//https://leetcode.com/problems/palindrome-number/
//Given an integer x, return true if x is a palindrome, and false otherwise.
void main() {
  print(isPalindrome(121)); // true
  print(isPalindrome(-121)); // false
  
  
}
bool isPalindrome(int x) {
     var X = x.toString();
    var reversedx = X.split('').reversed.join('');
    if (X == reversedx) {
      return true;
    } else {
      return false;
    }
  }