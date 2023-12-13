import 'package:collection/collection.dart';
List<int> array1 = [1, 2, 7, 10, 11];
List<int> array2 = [9, -1, 0];


void Sollution(List<int> array) {
  List<int> arraymedian = array.sorted((a, b) => a.compareTo(b));
  int resultNum = (array.length ~/ 2);
  return print(arraymedian[resultNum]);
}

void main() {
  Sollution(array1);
  Sollution(array2);
}