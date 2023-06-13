// Create a function that accepts 2 strings as named params: dayOfTheWeek and month and prints them out.
// Test it with the following scenarios:
// 1. Pass the dayOfTheWeek & month in correct order
// 2. Pass the dayOfTheWeek & month in reverse order

void main() {
  String dayOfTheWeek = '25';
  String month = 'February';
  printDayAndMonth(dayOfTheWeek: dayOfTheWeek, month: month);
  printDayAndMonth(month: month, dayOfTheWeek: dayOfTheWeek);


}

void printDayAndMonth({required String dayOfTheWeek, required String month}) {
  print('Today is $dayOfTheWeek of $month');
}