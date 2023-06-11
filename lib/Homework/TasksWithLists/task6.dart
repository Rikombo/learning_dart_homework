/*
Now write a function, that:

Is called min

Accepts list of ints as a parameter

Finds the min integer and returns it
 */

void main() {
  final numbers = [
    1,
    6,
    4,
    9,
    8,
    8,
    0,
    1,
    2,
    15,
    16,
    21,
    29,
    7,
    4,
    32,
    26,
    90,
    87,
    2
  ];
  int minValue = min(numbers);
  print(minValue);
}

int min(List<int> numbers) {
  int minValue = 0;
  for (int i = 1; i < numbers.length; i++) {
    if (minValue > numbers[i]) {
      minValue = numbers[i];
    }
  }
  return minValue;
}
