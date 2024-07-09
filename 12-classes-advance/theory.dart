// class Animal {
//   const Animal({required this.age});
//   final int age;

//   void sleep() => print('sleep');
//   void eat() => print('sleep');
// }

// class Dog extends Animal {
//   Dog({required super.age});

//   void bark() => print('bark');
//   void sleep() => print('dog : sleep');
// }

// class Bird extends Animal {
//   Bird({required super.age});

//   void fly() => print('fly');
// }

// void main(List<String> args) {
//   final animal = Animal(age: 10);
//   final dog = Dog(age: 22);

// }

// import 'dart:math';

// abstract class Shape {
//   double get area;
// }

// class Square extends Shape {
//   Square(this.side);
//   final double side;

//   @override
//   double get area => side * side;
// }

// class Circle extends Shape {
//   Circle(this.radius);
//   final double radius;

//   @override
//   double get area => pi * radius * radius;
// }

// void main(List<String> args) {
//   final circle = Circle(10);
//   print(circle.area);
// }

// Implements

// abstract class Playable {
//   void play();
//   void pause();
// }

// abstract class Recordable {
//   void startRecording();
//   void stopRecording();
// }

// class MediaPlayer implements Playable, Recordable {
//   @override
//   void play() {
//     print('Playing media');
//   }

//   @override
//   void pause() {
//     print('Pausing media');
//   }

//   @override
//   void startRecording() {
//     print('Start recording');
//   }

//   @override
//   void stopRecording() {
//     print('Stop recording');
//   }
// }

/*
Classes with generics
// class Stack<T> {
//   final List<T> _items = [];
//   void push(T item) => _items.add(item);

//   T pop() => _items.removeLast();
// }

// void main(List<String> args) {
//   final stack = Stack<int>();
//   stack.push(1);
//   print(stack.pop());
// }
 */

/*
Inheritance vs Composition
// Abstract Class
abstract class Vehicle {
  void move();
  
  void refuel() {
    print('Refueling the vehicle');
  }
}

// Inheritance
class Car extends Vehicle {
  @override
  void move() {
    print('Car is driving on the road');
  }
}

class Boat extends Vehicle {
  @override
  void move() {
    print('Boat is sailing on the water');
  }
}

// Composition
class Engine {
  void start() {
    print('Engine started');
  }
}

class ElectricCar {
  final Engine engine;
  final Battery battery;

  ElectricCar(this.engine, this.battery);

  void start() {
    engine.start();
    battery.charge();
  }
}

class Battery {
  void charge() {
    print('Battery charging');
  }
}

void main() {
  // Using inheritance
  Car car = Car();
  car.move();  // Output: Car is driving on the road
  car.refuel(); // Output: Refueling the vehicle

  Boat boat = Boat();
  boat.move();  // Output: Boat is sailing on the water

  // Using composition
  ElectricCar tesla = ElectricCar(Engine(), Battery());
  tesla.start(); // Output: Engine started
                 //         Battery charging
}

abstract class Widget {}

class Text extends Widget {
  Text(this.text);
  final String text;
}

class Button extends Widget {
  Button({required this.child, this.onPressed});
  final Widget child;
  final void Function()? onPressed;
}

void main(List<String> args) {
  final button =
      Button(Text("Hello"), onPressed: () => print('button pressed!'));
  button.child;
}

 */

