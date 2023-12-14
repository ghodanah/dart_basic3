class Hero {
  String name;
  int hp;

  Hero({
    required this.name,
    required this.hp,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Hero &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          hp == other.hp;

  @override
  int get hashCode => name.hashCode ^ hp.hashCode;

  @override
  String toString() {
    return 'Hero{name: $name, hp: $hp}';
  }
}

void main(List<String> arguments) {
  final heros = <Hero>{};

  final h1 = Hero(name: '슈퍼맨', hp: 100);
  final h2 = Hero(name: '슈퍼맨', hp: 100);

  heros.add(h1);
  print(heros.length);

  heros.remove(h2);
  print(heros.length);
}

class Student {
  String name;
  int studentNum;

  Student({
    required this.name,
    required this.studentNum,
  });


}