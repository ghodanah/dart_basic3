enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E extends KeyType> {
  E?  _data;
  KeyType keyType;
  static const int padlockMaxCount = 1024;
  static const int buttonMaxCount = 10000;
  static const int dialMaxCount = 30000;
  static const int fingerMaxCount = 1000000;

  StrongBox({
    required this.keyType,
  });

  void put(E data) {
    if(_data == null) {
      _data = data;
    } else {
      print('더이상 넣을 수 없습니다.');
    }
  }

  E? get() {
    switch(keyType) {
      case KeyType.padlock:
        if(padlockMaxCount == 1024) {
          print('padlock에 의해 열렸습니다.');
        } else {
          padlockCount++;
          return null;
        }
        break;
      case KeyType.button:
        if(buttonMaxCount == 10000) {
          print('button에 의해 열렸습니다.');
        } else {
          buttonCount++;
          return null;
        }
        break;
      case KeyType.dial:
        if(dialMaxCount == 30000) {
          print('dial에 의해 열렸습니다.');
        } else {
          dialCount++;
          return null;
        }
        break;
      case KeyType.finger:
        if(fingerMaxCount == 1000000) {
          print('finger에 의해 열렸습니다.');
        } else {
          fingerCount++;
          return null;
        }
        break;
    }
    return null;
  }
}

void main() {

}