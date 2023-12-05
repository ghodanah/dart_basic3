//더 큰수 판별하기


class Maxnumber{
  int a;
  int b;
  Maxnumber(this.a,this.b);

  void printInfo(){
    if(a > b){
      print('$a');
    } else if(b > a){
      print('$b');
    } else {
      print('eq');
    }
  }
}
void main(){
  var Max=Maxnumber(10, 20);
  Max.printInfo();

  var Max2=Maxnumber(10, 10);
  Max2.printInfo();

}