void main() {
  var numbers = [1, 3, 5, 7, 9];
  var result = 0;
  for (var number in numbers){
    result += number;
  }
  print(result);
}