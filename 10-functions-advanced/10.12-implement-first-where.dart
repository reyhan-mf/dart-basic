void main(List<String> args) {
  const list = [1, 2, 3, 4];

}

T firstWhere<T>(List<T> items, bool Function(T) f,
  {required T Function() orElse}) {
    for(var item in items) {
      if(f(item)){
        return item;
      }
      else {
        return orElse();
      }
    }
  }