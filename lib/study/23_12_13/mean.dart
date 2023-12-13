void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int number in numbers) {
    if (0 <= number && number <= 1000) {
      if (1 <= numbers.length && numbers.length <= 100) {
        double sum = numbers.reduce((e, v) => e + v).toDouble();
        // sum += number;
        double mean = sum / numbers.length;
        print('numbers의 원소들의 평균값은 $mean입니다.');
      }
    }
  }
}