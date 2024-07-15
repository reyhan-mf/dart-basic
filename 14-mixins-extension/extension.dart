extension on String {
  int? toIntorNull() => int.tryParse(this);
}

void main(List<String> args) {
  final a = ' '.toIntorNull();
  print(a);
}
