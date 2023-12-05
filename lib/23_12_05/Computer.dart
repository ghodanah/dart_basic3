import 'package:untitled2/23_12_05/TangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required this.makerName,
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
  });
}
