import 'Wand.dart';
class Wizard {

  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand? wand,
  })
      : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand!;


  // 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다.
  String get name => _name;

  set name(String? name) {
    if (name == null || name.length < 3) {
      throw Exception('이름이 없거나 이름이 3글자 이하입니다.');
    }
    _name = name;
  }

  // 마법사의 지팡이는 null 일 수 없다.
  Wand get wand => _wand;

  set wand(Wand? wand) {
    if (wand == null) {
      throw Exception('지팡이를 착용해주세요.');
    }
    _wand = wand;
  }


  // 마법사의 MP는 0 이상이어야 한다.
  int get mp => _mp;

  set mp(int mp) {
    if (mp < 0) {
      mp = 0;
      throw Exception('mp는 0 이상이어야 합니다.');
    }
    _mp = mp;
  }
    // HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

  set hp(int hp) {
    if (hp < 0) {
      _hp = 0;
    }
  }
  }