import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled2/23_12_15/dto/maskDto.dart';

class MaskApi {
  Future<MaskDto> getMaskInfoResult() async {
    final response = await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
    return MaskDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    // return MaskDto.fromJson(jsonDecode(response.body)); // 글자가 깨짐
  }
}