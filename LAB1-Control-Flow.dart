import 'dart:io';

void main() {
  // Exercise 1
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync() ?? '0');
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }

  // Exercise 2
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // Exercise 4
  print('Enter two numbers:');
  double num1 = double.parse(stdin.readLineSync() ?? '0');
  double num2 = double.parse(stdin.readLineSync() ?? '0');
  print('Enter an operator (+, -, *, /):');
  String operator = stdin.readLineSync() ?? '+';

  switch (operator) {
    case '+':
      print(num1 + num2);
      break;
    case '-':
      print(num1 - num2);
      break;
    case '*':
      print(num1 * num2);
      break;
    case '/':
      if (num2 != 0) {
        print(num1 / num2);
      } else {
        print('Cannot divide by zero');
      }
      break;
    default:
      print('Invalid operator');
  }

  // Exercise 5
  print('Enter a grade (0-100):');
  int grade = int.parse(stdin.readLineSync() ?? '0');

  switch (grade) {
    case > 83:
      print('A');
      break;
    case > 70:
      print('B');
      break;
    case > 60:
      print('C');
      break;
    case > 50:
      print('D');
      break;
    default:
      print('F');
  }
}
