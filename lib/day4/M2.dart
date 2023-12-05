import 'package:untitled2/day2/function.dart';

class Even{
  int A;
  int B;
  Even(this.A,this.B);

  void printIfo(){
    int C = A+B;
   if(C%2==0){
     print('"Yes"');
   } else{
     print('"No"');
   }
  }
}

void main(){
  var even = Even(30, 15);
  even.printIfo();

  var even2 = Even(12, 40);
  even2.printIfo();
}