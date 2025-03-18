//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
void main() {
  List<int> nums = [1, 2, 3, 4, 5,3];
  bool hasDuplicate = containsDuplicate(nums);
  
  print("Has duplicate: $hasDuplicate");
}

bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};
  for (int num in nums) {
    if (seen.contains(num)) {
      return true;
    }
    seen.add(num);
  }
  return false;

}
