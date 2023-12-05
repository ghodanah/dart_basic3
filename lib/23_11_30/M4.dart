class Arithmetic{
  int A;
  int B;
  int C;
  Arithmetic(this.A,this.B,this.C);

  void printInfo(int A, int B, int C){
    String result = '';
    for(int i=1; i<=C; i++){
        int D = A+=B;
        result = '$D ';
      }
     }
  }



void main(){
  var ari = Arithmetic(5, 10, 10);
  ari.printInfo(5, 10, 10);
}