/*
Write a function, that accepts a positional int parameter age.
It should print junior if age is less than 18,
middle if age is less than 65 and senior otherwise.
It should not return a value. The name of the function is checkAge.
 */

void main() {
  checkAge(16);
  checkAge(35);
  checkAge(81);
}

void checkAge(int age) {
  if (age <= 18) {
    print("junior");
  } else if (age <= 65) {
    print("middle");
  } else {
    print("senior");
  }
}
