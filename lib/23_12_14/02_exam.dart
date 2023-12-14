import 'dart:convert';

import 'package:http/http.dart' as http;
import 'todo.dart';

void main() async {
  // final Todo todo = await getTodo(1);
  // print(todo.title);

  List<Todo> todos = await getTodo2();
  todos.forEach((e) => print(e.title));

  // getTodo3();
}

Future<Todo> getTodo(int id) async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

  return Todo.fromJson(jsonDecode(response.body));
}

//실습2
Future<List<Todo>> getTodo2() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  final jsonList = jsonDecode(response.body) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

// Future<void> getTodo3() async {
//   final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
//   return print(response.body);
//   // final jsonList = jsonDecode(response.body) as List<dynamic>;
//   // return jsonList.map((e) => Todo.fromJson(e)).toList();
// }
