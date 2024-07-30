import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

const double font8 = 8;
const double font10 = 10;
const double font12 = 12;
const double font13 = 13;
const double font14 = 14;
const double font15 = 15;
const double font16 = 16;
const double font18 = 18;
const double font20 = 20;
const double font22 = 22;
const double font24 = 24;
const double font26 = 26;
const double font28 = 28;
const double font30 = 30;
const double font32 = 32;
const double font38 = 38;
const double font40 = 40;

const Map weights = {
  'thin': FontWeight.w100,
  'light': FontWeight.w300,
  'regular': FontWeight.w400,
  'medium': FontWeight.w500,
  'bold': FontWeight.w700,
  'extraBold': FontWeight.w800,
  'black': FontWeight.w900,
};

String fontFamilyDefault = 'YekanBakh';
String interFontFamily = "inter";

TextStyle textStyle(
    {size = 12,
      color,
      fontWeight = FontWeight.normal,
      height = 1.5,
      decoration = TextDecoration.none,
      String? fontFamily}) {
  return TextStyle(
    fontFamily: fontFamilyDefault,
    // fontFamily: fontFamily ??
    //     (Get.locale?.languageCode == "fa"
    //         ? fontFamilyDefault
    //         : interFontFamily),
    fontSize: size,
    color: color,
    fontWeight: fontWeight,
    height: height,
    decoration: decoration,
  );
}

TextStyle titleStyle22(color) {
  return textStyle(
    size: font22,
    color: color,
    height: 1.5,
  );
}

TextStyle bodyStyle14(color) {
  return textStyle(
    size: font14,
    color: color,
    height: 1.5,
  );
}

TextStyle bodyStyle14w500(color) {
  return textStyle(
    size: font14,
    color: color,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );
}

TextStyle bodyStyle12(color) {
  return textStyle(
    size: font12,
    color: color,
    height: 1.5,
  );
}

TextStyle styleCaption1(color) {
  return textStyle(
    size: font14,
    color: color,
    height: 1.5,
  );
}

TextStyle styleCaption2(color) {
  return textStyle(
    fontWeight: FontWeight.w700,
    size: font14,
    color: color,
    height: 1.5,
  );
}
