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
  var request = await HttpClient().getUrl(Uri.parse(url));
  var response = await request.close();

  var bytes = await response.fold([], (List<int> previous, List<int> element) {
    return previous..addAll(element);
  });

  var file = File(filename);
  await file.writeAsBytes(bytes);
  print('File downloaded');
}

// Exercise 3
Future<List<String>> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return ['Data 1', 'Data 2', 'Data 3'];
}

// Exercise 4
Future<void> fetchWeather(String city) async {
  var request = await HttpClient().getUrl(Uri.parse(
      'https://api.open-meteo.com/v1/forecast?latitude=52.5200&longitude=13.4050'));
  var response = await request.close();
  var responseBody = await response.transform(utf8.decoder).join();
  var data = jsonDecode(responseBody);
  print(
      'Temperature: ${data['current_weather']['temperature']}, Weather: ${data['current_weather']['description']}');
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
