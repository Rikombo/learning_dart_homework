void main() {
  printPerson('Valentin');
  printPerson('Anna', age: 50);
  final fullName = getFullName(firstName: 'Valentin', lastname: 'Stepanov');

}

void printPerson(String name, {int? age}) {
  if (age != null) {
    print('User $name is $age years old');
  } else {
    print('User $name is unknown age');
  }
}

String getFullName({required String firstName, required String lastname}) {
  return 'My firstname: $firstName and lastname: $lastname';
}

String intToString(int value) {
  return '$value';
}

String intToString2(int value) => '$value';

void printLine(String line) {
  print(line);
}

void printLine2(String line) => print(line);