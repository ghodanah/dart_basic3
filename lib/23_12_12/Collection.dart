class Collection {
  List<CollectionChartDataList>? collectionChartDataList;

  Collection({
    this.collectionChartDataList,
  });

  Collection.fromJson(Map<String, dynamic> json) {
    if (json['collectionChartDataList'] != null) {
      collectionChartDataList = [];
      json['collectionChartDataList'].forEach((v) {
        collectionChartDataList?.add(CollectionChartDataList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (collectionChartDataList != null) {
      map['collectionChartDataList'] =
          collectionChartDataList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class CollectionChartDataList {
  CollectionChartDataList({
    this.collectionName,
    this.collectionSalePrice,});

  CollectionChartDataList.fromJson(dynamic json) {
    collectionName = json['collectionName'];
    collectionSalePrice = json['collectionSalePrice'];
  }

  String? collectionName;
  dynamic collectionSalePrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['collectionName'] = collectionName;
    map['collectionSalePrice'] = collectionSalePrice;
    return map;
  }

}

void main() {
  final collection = Collection.fromJson ({
    "collectionChartDataList": [
      {
        "collectionName": "collectionName",
        "collectionSalePrice": null
      },
      {
        "collectionName": "collectionName",
        "collectionSalePrice": [
          {
            "price": 59.75,
            "cvtDatetime": "2023-03-26T08:08:35"
          },
          {
            "price": 60.00,
            "cvtDatetime": "2023-03-26T08:08:45"
          }
        ]
      }
    ]
  });
      }