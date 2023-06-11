/*
Find how many times a specific number (e.g. 8) is presented in this list

Now write a function, that:

Is called count

Accepts 2 params: a list of ints and a number to count (e.g. 8)

Counts how many times that number is present in the list and returns that value
 */

void main() {
  final numbers = [1, 6, 4, 9, 8, 8, 0, 1, 2, 15, 16, 21, 29, 7, 4, 32, 26, 90, 87, 2];
  int howManyTimes = numbers.where((item) => item == 8).length;
  print(howManyTimes);

  int howManyTimes2 = count(numbers, 8);
  print(howManyTimes2);

}

int count(List<int> numbers, num) {
  int count = 0;
  for(int i = 0; i < numbers.length; i++) {
    if(numbers[i] == num) {
      count++;
    }
  }
  return count;
}