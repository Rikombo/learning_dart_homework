/*
Write a function, that calculates the average of a and b
Return type: int Params: required named a and b without default values
Name of function: average
 */

void main() {
  int a = 35;
  int b = 17;
  int result = average(a: a, b: b);
  print(result);
}

int average({required int a, required int b}) => (a + b) ~/ 2;
