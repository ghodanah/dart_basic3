import 'package:http/http.dart' as http;

void main() {
 checkEncoding();
}
Future<void> checkEncoding() async {
  final response = await http.get(Uri.parse('http://example.com'));

  // Content-Type 헤더 확인
  String contentType = response.headers['content-type'] ?? '';
  print('Content-Type: $contentType');

}