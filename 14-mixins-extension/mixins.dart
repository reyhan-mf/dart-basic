mixin Breathing {
  void breathe() => print('breahing');
}

mixin Swimming {
  void swim() => print('swimming');
}

class Animal with Breathing {
  
}

class Plant with Breathing {

}

class Human extends Animal with Swimming {

}

// Mixin can't be instantiate
// Mixins can't have constructors
// Mixin can led to 