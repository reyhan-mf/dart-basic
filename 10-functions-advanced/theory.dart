/*
Anonymouse Func

void main(List<String> args) {
  final sayHi = (name) => 'Hi, $name';
  print(sayHi('Reyhan'));
}

 */

/*
# Functions as first class objects
void main(List<String> args) {
  final sayHi = (String name) => 'Hi, $name';
  welcome(sayHi, 'Reyhan');

}

void welcome(String Function(String) greet, String name) {
  print(greet(name));
  print('Welcome to this course');
}
 */

/*
Function types
typedef Greet = String Function(String);

void main(List<String> args) {
  final sayHi = (String name) => 'Hi, $name';
  welcome(sayHi, 'Reyhan');
}

void welcome(Greet greet, String name) {
  print(greet(name));
  print('Welcome to this course');
}

 */

/*
Closures

void main(List<String> args) {
  const multiplier = 10;
  const list = [1, 2, 3];
  final result = list.map((x)
  {
    return x * multiplier;
  });
}
 */

/*
forEach method
void main(List<String> args) {
  const list = [1, 2, 3];
  list.forEach((x) {
    print(x);
  });
  list.forEach((print));
}
 */

/*
The map method
void main(List<String> args) {
  const list = [1, 2, 3];
  final doubles = list.map((value) => value *2);
  print(doubles);
}
 */

/*
Code reuse with anon functions and generics
void main(List<String> args) {
  const list = [1, 2, 3];
  final doubles = transform<int, int>(list, (x) => x * x);
  print(doubles);
}

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
 */

/*
Where and firstWhere methods
void main(List<String> args) {
  const list = [1, 2, 3, 4];
  final even = list.where((value) =>
    value % 2 ==0);
    print(even);
  final value2 = list.firstWhere((x) => x + 1 == 4);
  print(value2);
}

 */
/*
The Reduce Method
void main(List<String> args) {
  const list = [1, 2, 3, 4];
  list.reduce((value, element) => value + element);
}
 */

void main(List<String> args) {
  const emails = [
    'abc@abc.com',
    'me@example.co.uk',
    'john@gmail.com',
    'katy@yahoo.com',
  ];
  const knownDomains = ['gmail.com', 'yahoo.com'];
  final unknownDomain = emails
                  .map((email) => email.split('@').last)
                  .where((domain) => !knownDomains.contains(domain));
  print(unknownDomain);
}

