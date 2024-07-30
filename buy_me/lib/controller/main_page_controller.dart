import 'dart:convert';
import 'package:buy_me/storage/storage_controller.dart';
import 'package:buy_me/text_in_model.dart';
import 'package:get/get.dart';
import '../model/shop_item.dart';

class MainPageController extends GetxController {
  RxList<ShopItemModel> items = <ShopItemModel>[].obs;
  Rx<ShopItemModel> selected = ShopItemModel(item: '').obs;
  TextInModel text = TextInModel();

  Future<void> addItem() async {
    try{
      items.insert(0, ShopItemModel(item: text.textController.text));
      List<Map<String, dynamic>> regularList = items.map((item) => item.toJson()).toList();
      String jsonString = jsonEncode(regularList);
      StorageController.setItemList(jsonString);
      text.textController.text = "";
      print(jsonDecode(StorageController.getList()));
    } catch(_){}
  }

  Future<void> getItems() async {
    try{
      StorageController.getList();
      jsonDecode(StorageController.getList()).forEach((item){
        items.add(ShopItemModel.fromJson(item));
      });
    } catch(_){}
  }

  Future<void> deleteItem() async {
    try {
      items.removeWhere((x) => x.item == selected.value.item);
      List<Map<String, dynamic>> regularList = items.map((item) => item.toJson()).toList();
      String jsonString = jsonEncode(regularList);
      StorageController.setItemList(jsonString);
      print(items);
    } catch (_) {}
  }


  @override
  void onInit(){
    getItems();
    super.onInit();
  }
}