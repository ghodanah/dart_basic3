import 'dart:math';

//최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가 하던지 말던지 자유.

class Cleric {
  static final int MaxHP = 50;
  static final int MaxMP = 10;

  String name;
  int HP = 50;
  int MP = 10;

  Cleric(this.name, this.HP, this.MP);

  void selfAid() {
    if (MP >= 5) {
      MP -= 5;
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

    if (MP > 10) {
      MP = MaxMP;
    }
    
    print('HP: $HP, HP: $MP');
    print('MP가 $plusMP만큼 회복되었습니다.');
    
    if (sec==0) {
      print('기도 시간이 부족합니다.')
    }

    return plusMP;
  }
}
