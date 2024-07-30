import 'package:buy_me/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../button.dart';
import '../colors.dart';
import '../controller/main_page_controller.dart';
import '../model/shop_item.dart';
import 'package:get/get.dart';

class ShopItem extends StatelessWidget {
  ShopItem({required this.item, super.key});
  ShopItemModel item;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    MainPageController controller = Get.put(MainPageController());
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: customColors.gray3,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: width,
      height: 60,
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.item,
            style: bodyStyle12(customColors.darkColor),
            overflow: TextOverflow.ellipsis,
          ),
          Button(
            color: customColors.red60,
            width: 46,
            height: 46,
            paddingPreEnd: 0,
            paddingPreStart: 0,
            text: "",
            prefixWidget: Icon(Icons.delete, color: customColors.white),
            onTap: (){
              controller.selected.value = item;
              print(controller.selected.value.item);
              controller.deleteItem();
            },
          ),
        ],
      ),
    );
  }
}