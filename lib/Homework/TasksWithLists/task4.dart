/*
Now write a function, that:

Is called max

Accepts list of ints as a parameter

Finds the max integer and returns it
 */

void main() {
  final numbers = [1, 6, 4, 9, 8, 8, 0, 1, 2, 15, 16, 21, 29, 7, 4, 32, 26, 90, 87, 2];
  int maxValue = max(numbers);
  print(maxValue);
}

int max(List<int> numbers) {
  int maxValue = numbers[0];
  for(int i = 0; i < numbers.length; i++) {
    if (numbers[i] > maxValue) {
      maxValue = numbers[i];
    }

  }
  return maxValue;
}