import 'package:untitled2/23_12_05/Asset.dart';

abstract class TangibleAsset extends Asset{
  String color;

  TangibleAsset(String name, int price, this.color) : super(name: '', price: 0);
}
