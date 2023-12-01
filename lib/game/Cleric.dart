import 'dart:math';

//최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가 하던지 말던지 자유.
//이 클래스는 Cleric(“아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다
// 이 클래스는 Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다
// 이 클래스는 Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
// 이 클래스는 Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음)
// 생성자는 가능한 한 중복되는 코드가 없도록 작성한다

class Cleric {
  static const int MaxHP = 50;
  static const int MaxMP = 10;
  String name;
  int HP;
  int MP;

  Cleric(
    this.name, {
    this.HP = Cleric.MaxHP,
    this.MP = Cleric.MaxMP,
  });

// 성직자는 “셀프 에이드" 라는 마법을 사용할 수 있고, MP를 5소비하는 것으로 자신의 HP 를 최대 HP 까지 회복할 수 있다.
  void selfAid() {
    if (MP >= 5) {
      MP -= 5;
      HP = MaxHP;
    } else {
      print('MP가 부족하여 스킬을 사용할 수 없습니다.');
    }
    print('HP: $HP, HP: $MP');
  }

  // 성직자는 “기도하기" (pray) 라는 행동을 취할 수 있고, 자신의 MP를 회복한다.
  // 이 메소드는 인수에 “기도할 시간(초)"를 지정할 수 있고, 리턴 값은 “실제로 회복된 MP 양" 을 반환한다.
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
      print('1초 이상 기도해주세요.');
    }

    return plusMP;
  }

}

void main() {
  final cleric = Cleric('cory');
  print(cleric.MP);

}