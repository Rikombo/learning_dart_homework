void main() {
  String? universityTitle = 'RTU'; // question mark means can have no value and it works, null value
  // print(universityTitle);

  if (universityTitle != null) {
    print('Studiyng at $universityTitle');
  } else {
    print('Not a student!');
  }

// Following this pattern, create variables of different type that describe your hobby,
// job or anything else that you want.
String? myJob = 'Croupier';
  if (myJob != null) {
    print('Working as $myJob');
  } else {
    print('Not a croupier');
  }

}