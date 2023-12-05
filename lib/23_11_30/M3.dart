
class Phone{
  var A;
  var B;
  var C;
  var D;
  Phone(this.A,this.B,this.C,this.D)

  {}void printInfo(){
    print('$A $B-$C-$D');
  }
}

void main(){
  var phone=Phone('모두연', '010', '1234', '5678');
  phone.printInfo();
}