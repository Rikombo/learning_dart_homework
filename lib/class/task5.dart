// Class work:
/*
Create a function that accepts 2 doubles as positioned params: weight and height and prints them out.
Test it with the following scenarios:
1. Pass the weight & height in correct order
2. Pass the weight & height in reverse order
P.S. - You don't need to specify real weight and height, just use any numbers.
 */


void main() {
  double weight = 65.2;
  double height = 172.5;
  printWeightAndHeight(weight, height); // Correct order
  printWeightAndHeight2(weight: weight, height: height);
  printWeightAndHeight3(height: height, weight: weight);
  printWeightAndHeight4(weight: weight, height: height);


}

void printWeightAndHeight(double weight, double height) {
  print('Weight: $weight and height: $height');
}

void printWeightAndHeight2({double height = 50, double weight = 172}) {
  print('Weight: $weight and height: $height');
}

void printWeightAndHeight3({required double height, required double weight}) {
  print('Weight: $weight and height: $height');
}

void printWeightAndHeight4({double? height, double? weight}) {
  print('Weight: $weight and height: $height');
}