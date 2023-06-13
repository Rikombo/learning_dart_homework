/*
Create a function that accepts 2 doubles as named params: weight and height and returns the result of BMI formula (weight / height^2).
Write the result in a variable in `main` function.
Print the result to console.
 */


void main() {

  final double bmi = bmiCalculation(50, 172);
  print(bmi);

}

double bmiCalculation(double weight, double height) {
  return weight / (height*height);
}