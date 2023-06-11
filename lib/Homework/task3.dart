/* Do the same task, but add a third parameter c.

 */
void main() {
  int a = 35;
  int b = 17;
  int c = 5;
  final result = multiply(a: a, b: b, c: c);
  print(result);
}

int multiply({required int a, required int b, required int c}) => a * b * c;