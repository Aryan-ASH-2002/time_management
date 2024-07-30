import 'package:buy_me/text_input.dart';
import 'package:buy_me/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../button.dart';
import '../colors.dart';
import '../controller/main_page_controller.dart';
import 'package:get/get.dart';

class AddItemPop extends StatelessWidget {
  AddItemPop({super.key});

  @override
  Widget build(BuildContext context) {
    MainPageController controller = Get.put(MainPageController());
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return Container(
      decoration: BoxDecoration(
        color: customColors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      padding: const EdgeInsets.all(12),
      width: 350,
      height: 210,
      child: Column(
        children: [
          Text(
            "Enter the item",
            style: titleStyle22(customColors.darkColor),
          ),
          const SizedBox(height: 10),
          TextIn(
            textInput: controller.text,
            headerText: "Item name:",
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                color: customColors.red60,
                width: 100,
                height: 50,
                text: "Cancel",
                onTap: (){
                  Get.back();
                },
              ),
              const SizedBox(width: 6,),
              Button(
                color: customColors.blue40,
                width: 100,
                height: 50,
                style: styleCaption1(customColors.white),
                text: "Confirm",
                onTap: ()async {
                  await controller.addItem();
                  Get.back();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}