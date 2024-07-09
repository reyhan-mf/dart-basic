enum Medal {gold, silver, bronze, noMedal}

void main() {
  // const age = 14;
  // if (age < 16){
  //   print('Junior ticket');
  //   print('Price is \$8');
  // }
  // else if (age >= 60) {
  //   print('Senior ticket');
  //   print('Price \$6');
  // }
  // else {
  //   print('Regular Ticket');
  //   print('Price is \$10');
  // }

// var i = 1;
// while (i <= 5){
//   print('x' * i);
//   i++;
// }

// for (var i = 1; i <= 5; i++) {
//   print('x' * i);
// }


const medal = Medal.gold;
switch(medal) {
  case Medal.gold:
    print('1');
    break;
  case Medal.silver:
    print('2');
    break;
  default:
    print('no medal, try again');
    break;
}

}