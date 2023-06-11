/*
Write a function that converts fahrenheit to celsius
 */

void main() {
  double fahrenheit = 68;
  final celsius = fahrenheitToCelsius(fahrenheit);
  print(celsius);
}

double fahrenheitToCelsius(double fahrenheit) => (fahrenheit - 32) * 5.0 / 9.0;