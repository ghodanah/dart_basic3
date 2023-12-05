abstract class IronMan{
  String name;
  String suitColor;

  IronMan(this.name, this.suitColor);

  void fly();

  void shootLasers();

  void withstandDamage();
}

class Mark50 extends IronMan {
  Mark50(String name, String suitColor): super(name, suitColor);

  @override
  void fly(){
    print('$name is flying');
  }
  @override
  void shootLasers(){
    print('$name is shoot Laser');
  }
  @override
  void withstandDamage(){
    print('$name is make huge Damage!');
  }

}

void main(){
  var mark50=Mark50('Mark50', 'red');
  mark50.fly();
  mark50.shootLasers();
  mark50.withstandDamage();

}