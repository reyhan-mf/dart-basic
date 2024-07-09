// class BankAccount {
//   BankAccount({
//     required this.accountHolder,
//     this.balance = 0,
//   });
//   final String accountHolder;
//   double balance;

//   void deposit(double amount) {
//     balance += amount;
//   }

//   bool withdraw(double amount){
//     if(balance > amount)
//     {
//       balance -= amount;
//       return true;
//     } else {
//       return false;
//     }
//   }
// }

// void main(List<String> args) {
//    final bankAccount = BankAccount(accountHolder: 'Reyhan', balance: 123321);
//    (bankAccount.withdraw(3213));
//    print(bankAccount.balance);

// }

/*
Const constructor
class Complex {
  const Complex(this.re, this.im);
  final double re;
  final double im;
}

void main(List<String> args) {
  const complex = Complex(1, 2);
  print(complex.im);

}
 */

/*
Named constructor
class Complex {
  const Complex(this.re, this.im);
  const Complex.zero() : re = 0, im = 0;
  const Complex.identity() : re = 1, im = 0;
  const Complex.real(this.re) : im = 0;
  const Complex.imaginary(this.im) : re = 0;
  final double re;
  final double im;
}

void main(List<String> args) {
  const complex = Complex(1, 2);
  print(complex.im);
}

 */

/*
Getters ans Setters
class Temperature {
  Temperature.celcius(this.celcius);
  Temperature.fahrenheit(double fahrenheit) 
    : celcius = (fahrenheit - 32) / 1.8;
  double celcius;
  double get fahrenheit => celcius * 1.8 + 32;
  set fahrenheit(double fahrenheit)
    => celcius = (fahrenheit - 32) / 1.8;
}

void main(List<String> args) {
  final temp1 = Temperature.fahrenheit(86);
  print(temp1.celcius);
}
 */

/*
Static methods and variables
class Strings {
  static const welcome = 'Welcome';
  static const signIn = 'Sign in';
  static String greet(String name) => 'Hi, $name';
}

void main(List<String> args) {
  print(Strings.welcome);
}
*/

// class BankAccount {
//   BankAccount({
//     required this.accountHolder,
//     this.balance = 0,
//   });
//   final String accountHolder;
//   double balance;

//   void deposit(double amount) {
//     balance += amount;
//   }

//   bool withdraw(double amount){
//     if(balance > amount)
//     {
//       balance -= amount;
//       return true;
//     } else {
//       return false;
//     }
//   }
// }

// void main(List<String> args) {
//    final bankAccount = BankAccount(accountHolder: 'Reyhan', balance: 123321);
//    (bankAccount.withdraw(3213));
//    print(bankAccount.balance);

// }

/*
Private variables and methods
class BankAccount {
  BankAccount(this._balance);
  double _balance;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
    }
  }
}
 */


