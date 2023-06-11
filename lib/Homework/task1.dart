// Write a function that calculates the difference of a and b.
// Return type: int Params: required named a and b without default values
// Name of function: difference.

void main() {
  int a = 35;
  int b = 17;
  final result = difference(a: a, b: b);
  print(result);
}

int difference({required int a, required int b}) => a - b;
