import 'package:buy_me/storage/storage.dart';
import 'package:get/get.dart';

class StorageController {

  static String getList() {
    var token = StorageService.get('itemList', StorageType.stringType);
    if (token != null) {
      return token;
    } else {
      return '';
    }
  }


  static void setItemList(String list) {
    StorageService.set('itemList', list, StorageType.stringType);
  }

}
