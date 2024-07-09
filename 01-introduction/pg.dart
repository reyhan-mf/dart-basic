void main() {
  List<List<int>> matriks = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  // create a for loop

  for (int i = 0; i < matriks.length; i++) {
    for (var j = 0; j < matriks.length; j++) {
      print('matriks[$i][$j] = ${matriks[j][i]}');
    }
  }
}
// dsa