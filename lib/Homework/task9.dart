// A classic: write a FizzBuzz game

void main() {
  fizzBuzz(20);
}

void fizzBuzz(int n) {
  List<dynamic> results = [];
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      results.add('FizzBuzz');
    } else if (i % 3 == 0) {
      results.add('Fizz');
    } else if (i % 5 == 0) {
      results.add('Buzz');
    } else {
      results.add(i);
    }
  }
  print(results);
}