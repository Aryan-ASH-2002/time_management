import 'package:buy_me/storage/storage.dart';
import 'package:buy_me/view/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageService.getInstance();
  runApp(const MyApp());
}
Color primaryColor = const Color.fromARGB(255, 255, 97, 19);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          CustomColors.light,
        ],
        useMaterial3: true,
        // fontFamily: "YekanBakh",
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              foregroundColor:
              MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                return Colors.white;
              }),
              backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.white;
                  } else {
                    return primaryColor;
                  }
                },
              ),
            )),
        tabBarTheme: TabBarTheme(
            labelStyle: TextStyle(color: primaryColor),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: primaryColor))),
        appBarTheme: AppBarTheme(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            titleTextStyle: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
            elevation: 1.5),
        primaryColor: primaryColor,
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primaryColor),
          labelStyle: const TextStyle(fontSize: 16),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(8, 8)),
            borderSide: BorderSide(width: 3, color: Colors.greenAccent),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.elliptical(8, 8)),
            borderSide: BorderSide(width: 3, color: primaryColor),
          ),
          focusColor: primaryColor,
        ),
      ),
      home: MainPage(),
    );
  }
}
