void main() {
  double tempFahrenheit = 86;
  double toCelcius = (tempFahrenheit - 32) / 1.8;
  print('${toCelcius.toStringAsFixed(0)}C');
}