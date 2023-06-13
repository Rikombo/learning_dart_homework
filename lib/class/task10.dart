void main() {
  final String day = intToWeekDay(day: 2);
  print(day);
  printEvenOrOdd(6);
}

String intToWeekDay({required int day}) {
  if (day == 1) {
    return 'Monday';
  } else if (day == 2) {
    return 'Tuesday';
  }
  return 'Day not found';
}

void printEvenOrOdd(int value) {
  if (value.isEven) {
    print ('Even');
  } else {
    print('Odd');
  }
}
