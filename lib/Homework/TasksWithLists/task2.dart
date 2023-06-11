// Now write a function, that:
//
// Is called average
//
// Accepts list of ints as a parameter
//
// Finds the average of all of the items and returns it

void main() {
  final numbers = [1, 6, 4, 9, 8, 8, 0, 1, 2, 15, 16, 21, 29, 7, 4, 32, 26, 90, 87, 2];
  average(numbers);
}

void average(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum+= numbers[i];
  }
  print(sum / numbers.length);
}