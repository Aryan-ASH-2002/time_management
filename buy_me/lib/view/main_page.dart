import 'package:buy_me/button.dart';
import 'package:buy_me/colors.dart';
import 'package:buy_me/controller/main_page_controller.dart';
import 'package:buy_me/text_style.dart';
import 'package:buy_me/view/shop_Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'add_item_pop.dart';
import 'package:lottie/lottie.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});



  @override
  Widget build(BuildContext context) {
    void timePicker(){
      showTimePicker(
        initialEntryMode: TimePickerEntryMode.dial,
        context: context,
        initialTime:  TimeOfDay.now(),
        cancelText:  "Cancel",
        confirmText:  "Save",
        helpText:  "Select time",
        builder: (context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        },
      );

    }
    MainPageController controller = Get.put(MainPageController());
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return Scaffold(
      backgroundColor: customColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top + 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shopping list",
                  style: titleStyle22(customColors.darkColor),
                ),
                Row(
                  children: [
                    Button(
                      color: customColors.blue40,
                      width: 46,
                      height: 46,
                      paddingPreEnd: 0,
                      paddingPreStart: 0,
                      text: "",
                      prefixWidget: Icon(Icons.add, color: customColors.white),
                      onTap: (){
                        Get.dialog(
                            AlertDialog(
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                content: AddItemPop()
                            )
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Obx(() => controller.items.isNotEmpty ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.items.length,
                  itemBuilder: (context, index){
                    return ShopItem(item: controller.items[index],);
                  }
              ) : Center(
                child: Lottie.asset('assets/animations/empty.json',
                    width: 350, height: 350, repeat: false),
              ))
              ),
            InkWell(
              onTap: (){
                timePicker();
              },
              child: Text('click'),
            )
          ],
        ),
      )
    );
  }
}