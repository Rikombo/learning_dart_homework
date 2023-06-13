void main() {
  List<String> dayNames = ['Monday', 'Tuesday', 'Wednesday', 'Thursday'];
  print(dayNames);

  List<int> dayNumbers = [1, 2];
  print(dayNumbers);

  dayNames.add('Today');
  print(dayNames);
  dayNames.remove('Today');
  print(dayNames);
  dayNames.addAll(['Today', 'Tomorrow']);
  print(dayNames);

  final mondayIndex = dayNames.indexOf('Monday');
  print('Monday index: $mondayIndex');
  final unknowIndex = dayNames.indexOf('Unknown');
  print('Unknown index: $unknowIndex');

  for (int i = 0; i < dayNames.length; i++) {
    print(dayNames[i]);
  }

  for (String day in dayNames) {
    print(day);
  }

  var i = 0;
  String wantedDay = 'Wednesday';
  while (i < dayNames.length) {
    if (dayNames[i] == wantedDay) {
      print('Found $wantedDay at index $i');
    }
    i++;
  }


  final containsFriday = dayNames.contains('Friday');
  print('Contains Friday: $containsFriday');

 }

