import 'dart:io';

class Product {
  final int id;
  final String name;
  final double price;

  const Product({required this.id, required this.name, required this.price});
  String get initial => name.substring(0, 1);
  String get displayName => '($initial)${name.substring(1)}: \$$price';
}

class Item {
  final Product product;
  final int quantity;

  Item({required this.product, this.quantity = 1});

  double get price => quantity * product.price;

  @override
  String toString() => '${quantity} x ${product.name}';
}

class Cart {
  final Map<int, Item> _items = {};
  void addProduct(Product product) {
    final item = _items[product.id];
    if (item == null) {
      _items[product.id] = Item(product: product, quantity: 1);
    } else {
      _items[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  double total() => _items.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);
  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is empty';
    }
    final itemizedList =
        _items.values.map((item) => item.toString()).join('\n');
    return '------\n$itemizedList\nTotal: \$${total()}\n------';
  }
}

const allProducts = [
  Product(id: 1, name: 'apples', price: 1.60),
  Product(id: 2, name: 'bananas', price: 0.70),
  Product(id: 3, name: 'courgettes', price: 1.0),
  Product(id: 4, name: 'grapes', price: 2.00),
  Product(id: 5, name: 'mushrooms', price: 0.80),
  Product(id: 6, name: 'potatoes', price: 1.50),
];

void main(List<String> args) {
  final cart = Cart();
  while (true) {
    print('What do you want to do? (v)iew items, (a)dd item, (c)heckout: ');
    final line = stdin.readLineSync();
    if (line == 'a') {
      final chosen = chooseProduct();
      if (chosen != null) {
        print(chosen.displayName);
        cart.addProduct(chosen);
        print(cart);
      }
    } else if (line == 'v') {
      print(cart);
    } else if (line == 'c') {}
  }
}

Product? chooseProduct() {
  final productList =
      allProducts.map((product) => product.displayName).join('\n');
  print('Available products:\n$productList');
  final line = stdin.readLineSync();
  for (var product in allProducts) {
    if (line == product.initial) {
      return product;
    }
  }
  print('not found');
  return null;
}