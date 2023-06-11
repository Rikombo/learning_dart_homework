/*
Write a function that accepts a list of numbers and returns the sum of its elements.
 */

void main() {
  final numbers = [1, 6, 4, 9, 8, 8, 0, 1, 2, 15, 16, 21, 29, 7, 4, 32, 26, 90, 87, 2];
  int sumOfList = sumOfElements(numbers);
  print(sumOfList);
}

int sumOfElements(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum;
}