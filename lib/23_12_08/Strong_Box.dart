//금고 클래스에 담는 인스턴스의 타입은 미정
class StrongBox<E> {
  E? _data;

  //금고에는 1개의 인스턴스를 담을 수 있음
  // put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
  void put(E data) {
    if(_data == null) {
      _data = data;
    } else {
      print('더이상 넣을 수 없습니다.');
    }
  }

  // get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨
  E? get() {
    return _data;
  }
}

void main() {
  StrongBox<String> strongBox = StrongBox<String>();

  strongBox.put('데이터1');
  strongBox.put('데이터2');

  var inData = strongBox.get();

  if (inData != null) {
    print('가지고 있는 데이터: $inData');
  }

}
