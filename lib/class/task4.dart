// functions

void main() {
  final name = 'Valentins';
  final lastname = 'Stepanovs';
  printHelloWorld();
  printFullName(name, lastname); // track correct order for values in brackets
  printFullName2(name: name, lastname: lastname); // 2
  printFullName2(lastname: lastname, name: name); // 3
  printFullName3();
  printFullName4(name: 'Valentin');
}

void printHelloWorld() {
  print('Hello world!');
}

void printFullName(String name, String lastname) {
  print('Hello, my name is $name and last name $lastname');
}
void printFullName2({required String name, required String lastname}) { // "required" helps to see correct orders of parameters
  print('Hello, my name is $name and last name $lastname');
}

void printFullName3({String? name, String? lastname}) { // null values
  print('Hello, my name is $name and last name $lastname');
}

void printFullName4({String name = 'Unknown', String lastname = 'Unknown'}) { // default values
  print('Hello, my name is $name and last name $lastname');
}