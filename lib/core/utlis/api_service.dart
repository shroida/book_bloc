import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await http.get(Uri.parse('$_baseUrl$endPoint'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body ) as Map<String, dynamic>;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
