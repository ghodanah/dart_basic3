
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  postSample();
  }

void postSample() async {
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  final jsonString = response.body;

  final json = jsonDecode(jsonString);

  print(json['title']);
}
