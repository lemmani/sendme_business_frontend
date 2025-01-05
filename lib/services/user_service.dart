import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<void> registerUser({
  required String fullName,
  required String phoneNumber,
  required String password,
}) async {
  const String url = 'https://sea-turtle-app-b9k5a.ondigitalocean.app/api/v1/user/';
  
  Map<String, String> headers = {
    'accept': 'application/json',
    'Content-Type': 'application/json',
    'X-CSRFToken': 'al8AwVEWq30BfMuYVOJfD5mrqLgGLEy0LE33XEzIixHcICNdXlcjjsDUMkmfD11Z',
  };

  Map<String, String> body = {
    'phone_number': phoneNumber,
    'fullname': fullName,
    'password': password,
    'email': 'user@example.com', // Replace with user input or a default value
    'role': 'Customer',
  };

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      if (kDebugMode) {
        print('Registration successful: ${response.body}');
      }
    } else {
      if (kDebugMode) {
        print('Failed to register: ${response.body}');
      }
    }
  } catch (e) {
    if (kDebugMode) {
      print('Error occurred: $e');
    }
  }
}
