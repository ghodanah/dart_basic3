void main() {
  int number = 42;

  // if-else 문을 사용하여 짝수인지 홀수인지 판별합니다.
  if(number % 2 == 0){
    print('$number는 짝수입니다.');
  } else {
    print('$number는 홀수입니다.');
  }

  // for 반복문을 사용하여 1부터 5까지의 합을 계산
  int sum=0;
  for (int i=1; i<=5; i++){
    sum +=i;
  }
  print('1부터 5까지의 합: $sum');

  //while 반복문을 사용하여 1부터 10까지의 곱 계산
  int product=1;
  int i=1;
  while(i<=10){
    product *= i;
    i++;
  }
  print('1부터 10까지의 곱: $product');

  //switch 문을 사용한 월별 일수 출력
  int month=2;
  int year = 2023;
  int days;
  switch(month){
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      days = 31;
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      days=30;
      break;
    case 2:
      if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
        days = 29;
      } else {
        days = 28;
      }
      break;
    default:
      days = 0;
      print('올바른 월이 아닙니다.');
  }
  if (days !=0){
    print('$year년 $month월은 $days일까지 있습니다.');
  }
}