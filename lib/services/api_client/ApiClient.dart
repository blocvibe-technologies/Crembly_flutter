
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tmdp_cashback_flutter/services/end_points/EndPoints.dart';

class APIClient {
  static const String baseURL = 'https://jsonplaceholder.typicode.com';

  Future<dynamic> get(String endpoint) async {
    print("${baseURL}$endpoint");
    final response = await http.get(Uri.parse('$baseURL/$endpoint}'));

    if (response.statusCode == 200) {
      print("responce >> ${json.decode(response.body)}");
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }

  Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    final response = await http.post(
      Uri.parse('$baseURL/$endpoint'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to post data: ${response.statusCode}');
    }
  }
}
