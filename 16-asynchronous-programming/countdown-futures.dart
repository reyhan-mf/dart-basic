/**
 * 
## Exercise: Countdown with Futures

Implement a `countdown` function that takes an `int n` argument, and prints all the numbers from `n` to 0, with one second delay between each number.

Then, call `countdown(5)` inside the `main()` method, and verify that it works as intended.

The program should print `Done` after the countdown has completed.

Use `Future`s, `async` and `await` as needed.
 */

Future countdown(int n) async {
  for (var i = 0; i < n; i++) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
}

void main(List<String> args) {
  countdown(5);
}
