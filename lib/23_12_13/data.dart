import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1997,
  };
  return jsonEncode(mockData);
}

void main() async {
  String movieInfo = await getMovieInfo();
  var decode = jsonDecode(movieInfo);
  print(decode['director']);
}