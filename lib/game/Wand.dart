class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power
  }) : _name = name,
       _power = power;

  // 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다.
  String get name => _name;

  set names(String? name) {
    if (name == null || name.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = name;
  }

  // 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  double get power => _power;

  set power(double power) {
    if (power < 0.5 || power > 100.0) {
      throw Exception('마력이 너무 낮거나 높습니다.');
    }
    _power = power;
  }
}
