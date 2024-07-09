void main(List<String> args) {
  final total = sum([4, 12, 43]);
  print(total);
}

double sum(List<double> numbers)
{
  var total = 0.0;
   for (var number in numbers) {
    total += number;
   }
   return total;
}