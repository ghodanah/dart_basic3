import 'package:untitled2/game/Hero.dart';
import 'package:untitled2/game/Slime.dart';

// 독슬라임: 슬라임 중에서도 독 공격이 되는 슬라임
class PoisonSlime extends Slime {

  PoisonSlime({required super.suffix});

  int possibleAttack = 5;

  @override
  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;

    double currentHP = hero.hp;
    double poisonDamage = currentHP / 5;

    if(possibleAttack > 0) {
      print('추가로 독 포자를 살포했다!');
      hero.hp -= poisonDamage;
      print('$poisonDamage포인트의 데미지');
      possibleAttack--;
    }
  }
}


void main() {
  final poisonSlime = PoisonSlime(suffix: '독슬라임');

  final hero = Hero(name: '홍길동', hp: 50);

  poisonSlime.attack(hero);

  poisonSlime.attack(hero);
}