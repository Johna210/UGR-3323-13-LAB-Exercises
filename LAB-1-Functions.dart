void main() {
  print(addNums(2, 3));

  print(isPrime(12));

  print(reverseString('Yohannes'));
}

// Exercise 1
int addNums(int a, int b) {
  return a + b;
}

// Exercise 2
bool isPrime(int num) {
  if (num < 2) return false;

  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

// Exercise 3
String reverseString(String inp) {
  String reversedValue = '';
  int N = inp.length;

  for (int i = N - 1; i >= 0; i--) {
    reversedValue += inp[i];
  }

  return reversedValue;
}
