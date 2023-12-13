void main() {
  //10인분 + 음료수
  //1인분에 12000원
  //음료수 2000원
  //n인분, 음료수 k개 매개변수
  //얼마 지불해야하는지 return

  int n = 64;
  int k = 6;
  int service = n ~/ 10;

  if (0 < n && n < 1000) {
    if (0 <= k && k < 1000) {
      if (n ~/ 10 > 0) {
        int sum = 12000 * n + (2000 * (k - service));

        print('$n인분을 시켜 서비스로 음료수를 $service개 받아 총 $n * 12000 + $k * 2000 - $service * 2000 = $sum원입니다.');
      }
    }
  }
}