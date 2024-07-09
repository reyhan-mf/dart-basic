class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  int get numRatings => ratings.length;
  double? avgRating() {
    if (ratings.isEmpty) {
      return null;
    }
    return ratings.reduce((value, element) => value + element) / numRatings;
  }
}

void main() {
  var papaps = Restaurant(name: 'coba1', cuisine: 'ayam bbq', ratings: [2.6, 5.0, 5.0]);
  print('Restaurant Name: ${papaps.name}');
  print('Cuisine: ${papaps.cuisine}');
  print('Number of Ratings: ${papaps.numRatings}');
  print('Average Rating: ${papaps.avgRating()}');
}
