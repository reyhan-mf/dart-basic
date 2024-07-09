// void main(List<String> args) {
//  sayHi(); 
// }

// void sayHi() {
//   print('Hi');
//   print('Welcome');
// }

// void main(List<String> args) {
//   (describe("Reyhan", 4));
// }

// void describe(String name, int age) {
//   print("My name is $name and I'm $age years old");
// }


// void main(List<String> args) {
//   (describe(name: "Reyhan", age: 4));
// }

// void describe({String name = '', int age = 0}) {
//   print("My name is $name and I'm $age years old");
// }

// void main(List<String> args) {
//   (describe(name: "Reyhan"));
// }

// void describe({required String name , required int age}) {
//   print("My name is $name and I'm $age years old");
// }

// void main(List<String> args) {
//   foo(1, 3);
// }

// void foo(int a, [int b = 2]){
//   print('a: $a, b: $b');
// }

void main(List<String> args) {
  printSum(2, 1/0);
}

void printSum(double x, double y) => print(x + y);
