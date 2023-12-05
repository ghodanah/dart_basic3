import 'package:untitled2/23_12_05/TangibleAsset.dart';

class Book extends TangibleAsset{
  String isbn;

  Book({
    required this.isbn,
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
  });
}