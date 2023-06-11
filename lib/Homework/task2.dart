/*
Write a function that calculates the multiplication of a and b.
Return type: int Params: required named a and b without default values
Name of function: multiply
 */


void main() {
  int a = 35;
  int b = 17;
  final result = multiply(a: a, b: b);
  print(result);

}

int multiply ({required int a, required int b}) => a * b;