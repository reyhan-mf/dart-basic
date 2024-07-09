
void main () {
  const netSalary = 800;
  const expenses =2499;
  if (netSalary > expenses) {
    print('You have saved \$${netSalary - expenses}');
  } else if (expenses > netSalary){
    print ('You have lost \$${expenses - netSalary}');
  }
  else {
    print('Your balance hasn\'t changed');
  }
}