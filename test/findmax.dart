import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled2/23_12_18/findmax.dart';

void main() {
  test('리스트에서 최댓값 찾기을 찾아야함', () {
    expect(findMax([1,2,3,4,5]), 5);
  });

  test('리스트에서 최댓값 찾기을 찾아야함', () {
    expect(findMax([3,4,5,1,9]), 9);
  });
}