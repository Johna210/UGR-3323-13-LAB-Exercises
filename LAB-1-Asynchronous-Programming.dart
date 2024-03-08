import 'dart:math';
import 'dart:io';
import 'dart:convert';

// Exercise 1
Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));
  var quotes = [
    'The only way to do great work is to love what you do.',
    'Don’t count the days, make the days count.',
    'The difference between winning and losing is most often not quitting.'
  ];
  return quotes[Random().nextInt(quotes.length)];
}

// Exercise 2
Future<void> downloadFile(String url, String filename) async {
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final file = File(filename);
      await file.writeAsBytes(response.bodyBytes);
      print('File downloaded successfully: $filename');
    } else {
      print("Download failed with status code: ${response.statusCode}");
    }
  } on Exception catch (e) {
    print("Error downloading file: $e");
  }
}

// Exercise 3
Future<List<String>> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return ['Data 1', 'Data 2', 'Data 3'];
}

// Exercise 4
Future<void> fetchWeather(String city) async {
  const baseUrl = 'https://api.open-meteo.com/v1/forecast';
  final url = Uri.parse(
      '$baseUrl?latitude=52.5200&longitude=13.4050'); // Replace with actual lat/lon for your city

  try {
    final response = await http.get(url); // Use http for consistent API usage
    if (response.statusCode == 200) {
      final responseBody = await response.transform(utf8.decoder).join();
      final data = jsonDecode(responseBody);
      final temperature = data['current_weather']['temperature'];
      final weatherDescription = data['current_weather']['description'];
      print('Temperature: $temperature, Weather: $weatherDescription');
    } else {
      print("Error fetching weather data: ${response.statusCode}");
    }
  } on Exception catch (e) {
    print("Error fetching weather data: $e");
  }
}

void main() async {
  // Exercise 1
  print('Fetching quote...');
  String quote = await fetchQuote();
  print('Quote: $quote');

  // Exercise 2
  await downloadFile('http://example.com/file.txt', 'file.txt');

  // Exercise 3
  print('Loading data...');
  List<String> data = await fetchData();
  print('Data: $data');

  // Exercise 4
  await fetchWeather('Berlin');
}
