class Cleric{
  String name;
  int HP=50;
  final int MaxHP=50;
  int MP=10;
  final int MaxMP=10;

  Cleric(this.name);

  void selfAid() {
    if(MP>=5){
      MP = MP-5;
      HP = MaxHP;
      print('HP:$HP, MP:$MP');
    } else{
      print('스킬을 사용할 수 없습니다.');
    }
  }

}