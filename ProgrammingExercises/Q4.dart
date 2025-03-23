//*Write a function that takes two numbers (start, end) and returns a list of all prime numbers between them.
//* Ensure that the function correctly identifies prime numbers and handles edge cases where start is
//*greater than end
void main() {
  print(findPrimes(10, 20));
  print(findPrimes(1, 10));
  print(findPrimes(20, 10));
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

List<int> findPrimes(int start, int end) {
  List<int> primes = [];

  for (int i = start; i < end; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }
  return primes;
}
