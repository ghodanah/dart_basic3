import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled2/23_12_18/iseven.dart';

void main() {
  test('true false가 잘 나와야 한다.', () {
    expect(isEven(4), true);
  });
  
  test('홀수면 false가 홀수가 나와야 한다.', () {
    expect(isEven(3), false);
  });
}