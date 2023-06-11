// Write a function that accepts a number and returns true if it is a prime number, false otherwise.

void main() {
  int number = 35;
  print(primeCheck(number));
}

bool primeCheck(int number) {
  if (number % 2 == 0) {
    return true;
  } else {
    return false;
  }
}