// Write a function that accepts a number and returns true if it is a prime number, false otherwise.

void main() {
  int number = 2;
  print(primeCheck(number));
}

bool primeCheck(int number) {
  if (number < 2) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
