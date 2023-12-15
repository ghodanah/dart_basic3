import 'package:untitled2/23_12_15/data_source/mask_api.dart';
import 'package:untitled2/23_12_15/mapper/mask_mapper.dart';
import 'package:untitled2/23_12_15/model/store.dart';

void main() async {
  final api = MaskApi();
  final dto = await api.getMaskInfoResult();

  List<Store> stores = dto.stores
          ?.where((e) => e.remainStat != null)
          .map((e) => e.toStore())
          .toList() ?? [];

  print(stores.toString());
}
