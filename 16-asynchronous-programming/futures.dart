/*
Future
import 'dart:math';

Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => 'Cappucino');

void main(List<String> args) {
  fetchUserOrder()
      .then((order) => print('Order is ready to be fetched'))
      .catchError((error) => print(error))
      .whenComplete(() => print('done'));
}

 */

/*
Async and await
import 'dart:math';

Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => 'Cappucino');

Future<void> main() async {
  print('Program Started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = fetchUserOrder();
    print(order2);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
 */

/*
Future.value and Future.error


import 'dart:math';

Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => 'Cappucino');

Future<String> fetchUserOrder2() => Future.value('espresso');

Future<String> fetchUserOrder3() => Future.error(UnimplementedError());

Future<void> main() async {
  print('Program Started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = fetchUserOrder();
    print(order2);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}

 */

import 'dart:math';

Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => 'Cappucino');

Future<String> fetchUserOrder2() => Future.value('espresso');

Future<String> fetchUserOrder3() => Future.error(UnimplementedError());

Future<void> main() async {
  print('Program Started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = fetchUserOrder();
    print(order2);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
