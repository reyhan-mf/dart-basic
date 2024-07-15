/*
Given the following function that implements the fizz-buzz algorithm:

void fizzBuzz() {
  for (var i = 1; i <= 15; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('fizz buzz');
    } else if (i % 3 == 0) {
      print('fizz');
    } else if (i % 5 == 0) {
      print('buzz');
    } else {
      print(i);
    }
  }
}
Convert this to a stream generator by replacing all the print statements with the yield keyword, so that each value is added as a String.

To make things fun, introduce a delay of 500 milliseconds inside the for loop, using Duration(milliseconds: 500).

In the main method, iterate through all the values in the stream and print them.
 */

Stream<String> fizzBuzz(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(milliseconds: 500));

    if (i % 3 == 0 && i % 5 == 0) {
      yield ('fizz buzz');
    } else if (i % 3 == 0) {
      yield ('fizz');
    } else if (i % 5 == 0) {
      yield ('buzz');
    } else {
      yield ('$i');
    }
  }
}

Future<void> main(List<String> args) async {
  final val = fizzBuzz(5);
  await for (var value in val) {
    print(value);
  }
}
