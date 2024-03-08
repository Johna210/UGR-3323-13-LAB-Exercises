void main() {
  // Exercise 1
  List<String> hobbies = ["Reading", "Coding", "Hiking"];

  hobbies.add("Gaming");

  hobbies.removeAt(0);

  hobbies.sort();

  if (hobbies.isEmpty) {
    print("You have no hobbies!");
  } else {
    print("My hobbies: $hobbies");
  }

  // Exercise 2
  List<int> numbers = [1, 3, 5, 1, 2, 5, 4];

  Set<int> uniqueNumbers = numbers.toSet();

  print("Unique numbers: $uniqueNumbers");

  // Exercise 3
  Map<String, int> students = {"Alice": 90, "Bob": 85, "Charlie": 78};

  students.putIfAbsent("David", () => 80);

  students.forEach((name, marks) => print("$name: $marks"));

  if (students.containsKey("Alice")) {
    print("Alice is a student.");
  }

  // Exercise 4
  List<Map<String, dynamic>> cart = [];

  cart.add({"name": "Shirt", "quantity": 2, "price": 15.99});
  cart.add({"name": "Book", "quantity": 1, "price": 24.50});

  // Calculate total price
  double totalPrice = 0.0;
  for (var item in cart) {
    totalPrice += item["quantity"] * item["price"];
  }

  print("Cart items:");
  for (var item in cart) {
    print("${item["quantity"]}x ${item["name"]} - \$${item["price"]}");
  }

  print("Total price: \$$totalPrice");

  String removeItem = "Book";
  cart.removeWhere((item) => item["name"] == removeItem);

  print("Cart after removing $removeItem:");

  // Exercise 5
  Student alice = Student();
  alice.name = "Alice";
  alice.marks = [90, 85, 92];

  double average = alice.getAverageMarks();
  print("Average marks for ${alice.name}: $average");
}

// Exercise 5
class Student {
  String name;
  List<int> marks;

  double getAverageMarks() {
    double sum = 0.0;
    for (var mark in marks) {
      sum += mark;
    }
    return sum / marks.length;
  }
}
