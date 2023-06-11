// Class work:
/*
Create a list of 6 months.
1. First list should be of type String.
2. Second list should be of type int.
3. Third list should be of type dynamic.
4. Print all lists.
5. Add three more months to the first list one by one.
6. Print this list to the console to check the result.
7. Add three more months to the first list at once.
8. Print this list to the console to check the result.
9. Find the index of the month "July" in the first list.
10. Find the index of the month "Unknown" in the first list.
11. Print both results to the console.
 */

void main() {
  List<String> months = ['January', 'February', 'March', 'April', 'May', 'June'];
  List<int> numberOfMonth = [1, 2, 3, 4, 5, 6];
  List<dynamic> monthsAndNumbers = ['January', 'February', 'March', 'April', 'May', 'June', 1, 2, 3, 4, 5, 6];
  print(months);
  print(numberOfMonth);
  print(monthsAndNumbers);

  months.add('July');
  months.add('August');
  months.add('September');

  print(months);

  months.addAll(['October', 'November', 'December']);
  print(months);

  var i = 0;
  String wantedMonth = 'July';
  while (i < months.length) {
    if (months[i] == wantedMonth) {
      print('Found $wantedMonth at index $i');
    }
    i++;
  }

  /*
  or we can do it like this:
  int indexJuly = months.indexOf('July');
  int indexUnknown = months.indexOf('Unknown');
   */


  i = 0;
  String unknownMonth = 'Unknown';
  while (i < months.length) {
    if (months[i] == unknownMonth) {
      print('Found $unknownMonth at index $i');
    }

    i++;
  }
  final unknownIndex = months.indexOf('Unknown');
  print('Unknown Index is: $unknownIndex');

    for (int i = 0; i < months.length; i++) {
      print(months[i]);
    }

    for (String month in months) {
      print(month);
    }

     i = 0;
    wantedMonth = 'June';
    while (i < months.length) {
      if (months[i] == wantedMonth) {
        print('Found $wantedMonth at index $i');
        break;
      } else {
        print('Not found $wantedMonth at index $i');
      }
      i++;
    }

    for (int i = 0; i < months.length; i++) {
      if (months[i] == 'Unknown') {
        print('Found Unknown at index $i');
        break;
      } else {
        print('Not found Unknown at index $i');
      }
    }

    final containsFebruary = months.contains('February');
    print('Contains February: $containsFebruary');
    final containsUnknown = months.contains('Unknown');
    print('Contains Unknown: $containsUnknown');
  }


