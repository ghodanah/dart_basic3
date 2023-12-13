List<int> array1 = [149, 180, 192, 170];
List<int> array2 = [180, 120, 140];

void Sollution(List<int> array, int height) {
  List<int> taller = [];

  for(int i = 0; i < array.length; i++) {
    if(array[i] > height) {
      taller.add(array[i]);
    }
  } return print(taller.length);
}

void main() {
  Sollution(array1, 167);
  Sollution(array2, 190);
}