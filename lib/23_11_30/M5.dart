import 'package:untitled2/day2/function.dart';

class Card0 {
  late int a;
  late int b;
  late int c;
  late int d;
  List<int> Card = [1,2,3,4,5];

  Card0(this.a, this.b, this.c, this.d);

  void printInfo() {
    for (int i = 0; i < Card.length; i++) {
      if (a == Card[i]) {
        Card.removeAt(i);
      }
      if (b==Card[i]){
        Card.removeAt(i);
      }
      if (c==Card[i]){
        Card.removeAt(i);
      }
      if (d==Card[i]){
        Card.removeAt(i);
      }
    }
    print(Card[0]);
  }
}




void main() {
  var Card1=Card0(1, 2, 3, 5);
  Card1.printInfo();
}