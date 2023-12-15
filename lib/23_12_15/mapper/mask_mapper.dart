import 'package:untitled2/23_12_15/dto/maskDto.dart';
import 'package:untitled2/23_12_15/model/store.dart';

extension StoresToStore on Stores {
  Store toStore() {
    return Store(
      address: addr ?? '주소 없음',
      name: name ?? '이름 없음',
      stock: remainStat ?? 'null',
    );
  }
}
