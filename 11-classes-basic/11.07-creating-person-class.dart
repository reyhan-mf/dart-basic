class Person {
  Person({
    required this.name,
    this.age,
    this.height,
  });
  String name;
  int? age;
  double? height;

  void printDescription() {
    if (age != null && height != null) {
      print('My name is $name. I\'m $age years old, I\'m $height meters tall.');
    } else {
      print('My name is $name');
    }
  }
}

void main(List<String> args) {
  final bocah = Person(name: 'Reyhan');
  final bocah2 = Person(name: 'anjing', age: 2, height: 4);
  (bocah.printDescription());
  bocah2.printDescription();

}
