Future<int> sumStream(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Stream<int> countStream(int n) async* {
  for (int i = 0; i < n; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
}

Future<void> main() async {
  //final stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);
  final stream = countStream(5);
  final sum = await sumStream(stream);
  print(sum);
}
