void main() {
  var ist = [3, 2, 3];

  var result = twoSum(ist, 6);
  print(result);
}

List<int> twoSum(List<int> nums, int target) {
   Map <int, int> seen = {};
   List <int> result = [];
   for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
       if (seen.containsKey(complement)){
          result.add(seen[complement]!);
          result.add(i);
          return result;

       }
       seen[nums[i]]=i;
   }
   return [];
}
