import 'dart:math';

class Cleric{
  String name;
  int HP=50;
  final int MaxHP=50;
  int MP=10;
  final int MaxMP=10;

  Cleric(this.name, this.HP, this.MP);

  void selfAid() {
    if(MP>=5){
      MP = MP-5;
      HP = MaxHP;
    } else {
      print('MP가 부족하여 스킬을 사용할 수 없습니다.');
    }
    print('HP: $HP, HP: $MP');
  }

  int pray(int sec) {
    int random = Random().nextInt(3);
    int plusMP = sec + random;

    MP = MP + plusMP;

    if(MP>10){
      MP = MaxMP;
    }
    print('HP: $HP, HP: $MP');
    print('MP가 $plusMP만큼 회복되었습니다.');

    return  plusMP;
  }
}
void main(){
  Cleric cleric = Cleric('cold', 10,5);
  cleric.selfAid();
  cleric.pray(5);
}