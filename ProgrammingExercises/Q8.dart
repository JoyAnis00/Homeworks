//Write a function that takes a list of numbers and returns the sum of all elements.
 //Example:
 //sumList([1, 2, 3, 4, 5]) -> 15
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Sum of list: ${sumList(numbers)}");
}

int sumList(List<int> numbers) {
  int sum = 0; 
  for (int num in numbers) {
    sum += num; 
  }
  return sum;
}
