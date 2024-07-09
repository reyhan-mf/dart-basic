void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const order = ['margherita', 'pepperoni', 'pineapple'];
  final total = (calculateTotal(order, pizzaPrices));
  print('Total: \$$total');
}

double calculateTotal(List<String> orders, Map<String, double> foods) {
  var total = 0.0;
  for (var item in orders) {
    final price = foods[item];
    if (price != null) {
      total += price;
    }
  }
  return total;
}
