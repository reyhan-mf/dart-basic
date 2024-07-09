import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => side + side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => (radius * 2L) * pi;
}




void main() {
  final square = Square(15);
  print(square.perimeter);
}
