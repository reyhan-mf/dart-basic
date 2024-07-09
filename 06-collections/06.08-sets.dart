const a = {1, 3};
const b = {3, 5};

void main() {
  final c = a.union(b).difference(a.intersection(b));
  print(c);
}
