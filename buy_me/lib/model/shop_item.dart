class ShopItemModel {
  ShopItemModel({required this.item});
  String item;

  factory ShopItemModel.fromJson(map){
    return ShopItemModel(
      item: map["item"]
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'item': item,
    };
  }
}