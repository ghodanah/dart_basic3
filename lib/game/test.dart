class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  })
      : _name = name,
        _power = power;
  String get name => _name;
  double get power => _power;

  set name(String value) {
    // 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다.
    if (name.length < 3) {
      throw Exception("이름이 너무 짧습니다.");
    }
    _name = name;
  }

  // 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
   set power(double powervalue) {
     if (power < 0.5 || power > 100.0) {
       throw Exception("마력은 0.5이상 100이하여야 합니다.");
     }
     _power = power;
   }

  }

class Wizard {
  String _name;
  int hp;
  int _mp;
  Wand? _wand;

  String get name => _name;
  Wand? get wand => _wand;
  int get mp => _mp;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand? wand,
  }): _name = name,
      _hp = hp,
      _mp = mp,
      _wand = wand;

  // 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  set name(String name) {
    if (name.length < 3) {
      throw Exception("이름이 짧습니다.");
      }
    _name = name;
    }

    // 마법사의 지팡이는 null 일 수 없다.
  set wand(Wand wand) {
    if (wand == null) {
      throw Exception("완드를 장착해주세요.");
    }
    _wand = wand;
  }

//  마법사의 MP는 0 이상이어야 한다.
  set mp(int mp) {
    if (mp < 0) {
      throw Exception("Invalid MP value");
    }
    _mp = mp;
  }

  // HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
    hp = (hp < 0) ? 0 : hp;
  }

// 예제 사용
void main() {
  try {
    Wand wand = Wand("Powerful Wand", 75.0);
    Wizard wizard = Wizard("Gandalf", wand, 50, -10); // HP가 음수인 경우

    print("Wizard ${wizard.name} created with HP: ${wizard.hp}");
  } catch (e) {
    print("Error: $e");
  }
}