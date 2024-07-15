extension IterableX<T extends num> on Iterable<T> {
  T sum() => reduce((value, element) => value + element as T);
}

void main(List<String> args) {
  final sum = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ].sum();
  print(sum);
}
