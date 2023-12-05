// 다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오
// 대한민국의 도시 이름 모음 (순서 상관 없음) - Set
// 10명 학생의 시험 점수 - Map
// 대한민국의 도시별 인구수 (순서 상관 없음) - Map

//이름을 가지는 Person 클래스를 작성하시오. Person은 반드시 이름을 포함해야 합니다.

class Person {
  String name;
  int age;

  Person({
    required this.name,
    required this.age
  });

  String word(){
    return('$name의 나이는 $age살');
  }

}

void main() {
  //이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
  List<Person> person = [];
  Person person1 = Person(name: '홍길동', age: 20);
  Person person2 = Person(name: '한석봉', age: 25);

  person.add(person1);
  person.add(person2);

  for (Person person in person) {
    print(person.name);
  }

  Map<String, int> nameAge = {
    for (Person person in person) person.name: person.age
  };
  for (Person person in person){
     print(person.word());
  }
}



//   Map<String, int> name1 [{'name: '홍길동'', 'age: 20'}, {'name: '한석봉'', 'age: 25'}];
// }