// Exercise 1
class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

// Exercise 2
class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int totalMarks() {
    return marks.reduce((value, element) => value + element);
  }

  double averageMarks() {
    return totalMarks() / marks.length;
  }
}

void main() {
  Person person = Person('Yohannes Solomon', 30, '123 Main St');
  print('Name: ${person.name}, Age: ${person.age}, Address: ${person.address}');

  // Student
  Student student =
      Student('Yohannes Solomon', 20, '123 Main St', 1, [90, 85, 88]);
  print(
      'Name: ${student.name}, Age: ${student.age}, Address: ${student.address}, Roll Number: ${student.rollNumber}, Total Marks: ${student.totalMarks()}, Average Marks: ${student.averageMarks()}');
}
