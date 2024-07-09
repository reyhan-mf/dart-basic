void main(List<String> args) {}

List<T> where<T>(List<T> items, bool Function(T) f) {
  var results = <T>[];
  for (var item in items) {
    results.add(item);
  }
  return results;
}
