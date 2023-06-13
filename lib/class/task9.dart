// Class work:
// Following this pattern, write a function that accepts 2 params `a` and `b` and returns the result of `a * b`.
// 1. Write it using a fat arrow notation
// 2. Write it using a regular function notation
// Do the same for sum `a + b`

void main() {
  int a = 5;
  int b = 35;
  final sumNumbers = sum(a, b);
  final mulNumbers = mul2(a, b);
  print(sumNumbers);
  print(mulNumbers);
}

int sum(int a, int b) => a + b;
int sum2(int a, int b) {
  return a + b;
}

int mul(int a, int b) => a * b;
int mul2(int a, int b) {
  return a * b;
}

