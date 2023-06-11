/*
Add an item 123 to the end of this list.

Add an item 124 to the beginning of this list.

Add an item 125 to position 7 of this list.

Remove 123 from this list.

Remove the last item from the list.

Remove the first item from this list.
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
  numbers.add(123);
  numbers.insert(0, 124);
  numbers.insert(7, 125);
  numbers.remove(123);
  numbers.removeLast();
  numbers.removeAt(0);
}
