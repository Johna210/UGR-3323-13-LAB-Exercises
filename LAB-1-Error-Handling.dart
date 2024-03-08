import 'dart:io';

void main() {
  // Exercise 1
  try {
    stdout.write("Enter a number: ");
    final input = stdin.readLineSync();
    final number = int.parse(input!);
    print("You entered: $number");
  } on FormatException catch (e) {
    print("Invalid input. Please enter a valid number.");
  }

  // Exercise 2
  int divideNumbers(int num1, int num2) {
    try {
      return num1 ~/ num2;
    } on IntegerDivisionByZeroException {
      print("Cannot divide by zero.");
      return 0;
    }
  }

  final result = divideNumbers(10, 2);
  print("Result: $result");

  // Exercise3
  try {
    final file = File("path/to/file.txt");
    final contents = file.readAsStringSync();
    print("File contents: $contents");
  } on FileSystemException catch (e) {
    print("Error reading file: ${e.message}");
  }
}
