```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      // Handle HTTP error directly, no need for rethrow here
      print('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions. Consider logging more details based on your app's needs
    print('Error fetching data: $e');
    // Rethrow only if you need higher-level handling of the exception
    // For example, if you want to display a user-friendly message in a UI
    //  or handle the error in a different part of the application
  }
}
```