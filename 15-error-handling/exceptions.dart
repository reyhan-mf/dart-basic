class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw Exception('Denominator cannot be 0');
    }
  }
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void testFraction() {
  try {
    final f = Fraction(3, 0);
    print(f.value);
  } on Exception catch (e) {
    print(e);
  } finally {
    print('Test finished');
  }
}

void main(List<String> args) {
  testFraction();
}
