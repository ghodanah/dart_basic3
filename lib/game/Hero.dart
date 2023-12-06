import 'Slime.dart';
import 'Sword.dart';

class Hero {
  String name;
  double _hp;
  Sword? sword;

  Hero({
    required this.name,
    required double hp,
    this.sword,
  }) : _hp = hp;

  // getter
  // 프로퍼티
  double get hp => _hp;

  set hp(double value) {
    if (value < 0) {
      throw Exception('hp는 0보다 작을 수 없다');
    }

    _hp = value;
  }

  void attack(Slime slime) {
    slime.hp -= 10;
    print('10의 데미지!!!');
  }

  void run() {
    print('뛰었다');
  }
}

void main() {
  final hero = Hero(name: '용사', hp: 100);
  hero.name = 'aa';
  print(hero.hp);
  hero.hp = 100;

}