import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled2/23_12_18/reverse.dart';

void main() {
  test('문자열을 뒤부터 반대로 나열하여야 한다.', () {
    expect(reverseString("Hello"), "olleH");
  });

  test('문자열을 뒤부터 반대로 나열하여야 한다.', () {
    expect(reverseString("Hello Dart"), "traD olleH");
  });
}