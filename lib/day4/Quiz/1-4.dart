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
    }
  }

  void pray(int sec) {
    int random = Random().nextInt(3);
    int plusMP(sec) {
      return sec + random;
    }

    MP = MP + plusMP(sec);

    if(MP>10){
      MP = MaxMP;
    }
  }

}