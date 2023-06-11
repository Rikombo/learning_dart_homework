/*
Write a function that calculates the division of a and b.
Return type: int Params: required named a and b without default values
Name of function: divide
 */

void main() {
int a = 35;
int b = 5;
final result = divide(a: a, b: b);
print(result);
}

int divide({required int a, required int b}) => a ~/ b;