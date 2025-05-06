//https://leetcode.com/problems/contains-duplicate/description/
//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

void main() {
  print(containsDuplicate([1, 2, 3, 4, 5, 6, 7, 8, 1]));
}
// Solution 1: Using Set with loop (Efficient & clear)
bool containsDuplicate(List<int> nums) {
  Set seen = {};
  for (var element in nums) {
    if (!seen.contains(element)) {
      seen.add(element);
    } else {
      return true;
    }
  }
  return false;
}
//  Solution 2: Using toSet() shortcut
bool containsDuplicateShort(List<int> nums) => nums.length > nums.toSet().length;