import 'dart:io';

void main() {
  String name = 'Yohannes';
  int age = 22;
  String favouriteColor = 'Red';

  print(
      "My Name is $name I am $age years old and my favourite color is $favouriteColor");

  const speedOfLight = 299792458;

  print('Enter the distance in meters: ');
  String input = stdin.readLineSync() ?? '';
  int distance = int.parse(input);

  double time = distance / speedOfLight;

  print('Light takes $time seconds to travel $distance meters.');
}
