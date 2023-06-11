/*
Write a function that converts celsius to fahrenheit
 */

void main() {

  double celsius = 20;
  final fahrenheit = celsiusToFahrenheit(celsius);
  print(fahrenheit);
}

double celsiusToFahrenheit(double celsius) {
  return celsius * 9.0 / 5.0 + 32;
}