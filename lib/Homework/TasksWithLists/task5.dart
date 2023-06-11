/*
Find the min value in this list just in the main function

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

  print(numbers.reduce((minValue, next) => minValue > next ? minValue : next));
}
