import 'package:untitled2/23_12_05/TangibleAsset.dart';

class Book extends TangibleAsset{
  String isbn;

  Book(super.name, super.price, super.color, this.isbn);
}