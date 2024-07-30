import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.background1,
    required this.background2,
    required this.background3,
    this.green90,
    this.green80,
    this.green70,
    this.green60,
    this.green50,
    this.green40,
    this.green30,
    this.green20,
    this.green10,
    this.green5,
    this.red90,
    this.red80,
    this.red70,
    this.red60,
    this.red50,
    this.red40,
    this.red30,
    this.red20,
    this.red10,
    this.red5,
    this.orange90,
    this.orange80,
    this.orange70,
    this.orange60,
    this.orange50,
    this.orange40,
    this.orange30,
    this.orange20,
    this.orange10,
    this.orange5,
    this.orange2,
    this.orange1,
    this.blue1,
    this.blue5,
    this.blue10,
    this.blue20,
    this.blue30,
    this.blue40,
    this.blue50,
    this.blue60,
    this.blue70,
    this.blue80,
    this.blue90,
    this.text1,
    this.text5,
    this.text10,
    this.text20,
    this.text30,
    this.text40,
    this.text50,
    this.text60,
    this.text70,
    this.text80,
    this.text90,
    this.darkColor,
    this.white,
    this.gray,
    this.gray1,
    this.gray2,
    this.gray3,
    this.fafa,
    this.text70Static,
    this.whiteStatic,
    this.orange60Static,
    this.text90Static,
    this.wStatic,
  });

  final Color? background1;
  final Color? background2;
  final Color? background3;
  final Color? green90;
  final Color? green80;
  final Color? green70;
  final Color? green60;
  final Color? green50;
  final Color? green40;
  final Color? green30;
  final Color? green20;
  final Color? green10;
  final Color? blue90;
  final Color? blue80;
  final Color? blue70;
  final Color? blue60;
  final Color? blue50;
  final Color? blue40;
  final Color? blue30;
  final Color? blue20;
  final Color? blue10;
  final Color? blue5;
  final Color? blue1;
  final Color? green5;
  final Color? red90;
  final Color? red80;
  final Color? red70;
  final Color? red60;
  final Color? red50;
  final Color? red40;
  final Color? red30;
  final Color? red20;
  final Color? red10;
  final Color? red5;
  final Color? orange90;
  final Color? orange80;
  final Color? orange70;
  final Color? orange60;
  final Color? orange50;
  final Color? orange40;
  final Color? orange30;
  final Color? orange20;
  final Color? orange10;
  final Color? orange5;
  final Color? orange2;
  final Color? orange1;
  final Color? text90;
  final Color? text80;
  final Color? text70;
  final Color? text60;
  final Color? text50;
  final Color? text40;
  final Color? text30;
  final Color? text20;
  final Color? text10;
  final Color? text5;
  final Color? text1;
  final Color? darkColor;
  final Color? white;
  final Color? gray;
  final Color? gray1;
  final Color? gray2;
  final Color? gray3;
  final Color? fafa;
  final Color? text70Static;
  final Color? whiteStatic;
  final Color? orange60Static;
  final Color? text90Static;
  final Color? wStatic;

  @override
  CustomColors copyWith({
    Color? background1,
    Color? background2,
    Color? background3,
    Color? blue90,
    Color? blue80,
    Color? blue70,
    Color? blue60,
    Color? blue50,
    Color? blue40,
    Color? blue30,
    Color? blue20,
    Color? blue10,
    Color? blue5,
    Color? blue1,
    Color? green90,
    Color? green80,
    Color? green70,
    Color? green60,
    Color? green50,
    Color? green40,
    Color? green30,
    Color? green20,
    Color? green10,
    Color? green5,
    Color? red90,
    Color? red80,
    Color? red70,
    Color? red60,
    Color? red50,
    Color? red40,
    Color? red30,
    Color? red20,
    Color? red10,
    Color? red5,
    Color? orange90,
    Color? orange80,
    Color? orange70,
    Color? orange60,
    Color? orange50,
    Color? orange40,
    Color? orange30,
    Color? orange20,
    Color? orange10,
    Color? orange5,
    Color? orange2,
    Color? orange1,
    Color? text90,
    Color? text80,
    Color? text70,
    Color? text60,
    Color? text50,
    Color? text40,
    Color? text30,
    Color? text20,
    Color? text10,
    Color? text5,
    Color? text1,
    Color? darkColor,
    Color? white,
    Color? gray,
    Color? gray1,
    Color? gray2,
    Color? gray3,
    Color? fafa,
    Color? text70Static,
    Color? whiteStatic,
    Color? orange60Static,
    Color? text90Static,
    Color? wStatic
  }) {
    return CustomColors(
      background1: background1 ?? this.background1,
      background2: background2 ?? this.background2,
      background3: background3 ?? this.background3,
      orange90: orange90 ?? this.orange90,
      orange80: orange80 ?? this.orange80,
      orange70: orange70 ?? this.orange70,
      orange60: orange60 ?? this.orange60,
      orange50: orange50 ?? this.orange50,
      orange40: orange40 ?? this.orange40,
      orange30: orange30 ?? this.orange30,
      orange20: orange20 ?? this.orange20,
      orange10: orange10 ?? this.orange10,
      orange5: orange5 ?? this.orange5,
      orange2: orange2 ?? this.orange2,
      orange1: orange1 ?? this.orange1,
      blue90: blue90 ?? this.blue90,
      blue80: blue80 ?? this.blue80,
      blue70: blue70 ?? this.blue70,
      blue60: blue60 ?? this.blue60,
      blue50: blue50 ?? this.blue50,
      blue40: blue40 ?? this.blue40,
      blue30: blue30 ?? this.blue30,
      blue20: blue20 ?? this.blue20,
      blue10: blue10 ?? this.blue10,
      blue5: blue5 ?? this.blue5,
      blue1: blue1 ?? this.blue1,
      text90: text90 ?? this.text90,
      text80: text80 ?? this.text80,
      text70: text70 ?? this.text70,
      text60: text60 ?? this.text60,
      text50: text50 ?? this.text50,
      text40: text40 ?? this.text40,
      text30: text30 ?? this.text30,
      text20: text20 ?? this.text20,
      text10: text10 ?? this.text10,
      text5: text5 ?? this.text5,
      text1: text1 ?? this.text1,
      darkColor: darkColor ?? this.darkColor,
      white: white ?? this.white,
      gray: gray ?? this.gray,
      gray1: gray1 ?? this.gray1,
      gray2: gray2 ?? this.gray2,
      gray3: gray3 ?? this.gray3,
      fafa: fafa ?? this.fafa,
      text70Static: text70Static ?? this.text70Static,
      whiteStatic: whiteStatic ?? this.whiteStatic,
      orange60Static: orange60Static ?? this.orange60Static,
      text90Static: text90Static ?? this.text90Static,
      wStatic: whiteStatic ?? this.wStatic,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      background1: Color.lerp(background1, other.background1, t),
      background2: Color.lerp(background2, other.background2, t),
      background3: Color.lerp(background3, other.background3, t),
      orange90: Color.lerp(orange90, other.orange90, t),
      orange80: Color.lerp(orange80, other.orange80, t),
      orange70: Color.lerp(orange70, other.orange70, t),
      orange60: Color.lerp(orange60, other.orange60, t),
      orange50: Color.lerp(orange50, other.orange50, t),
      orange40: Color.lerp(orange40, other.orange40, t),
      orange30: Color.lerp(orange30, other.orange30, t),
      orange20: Color.lerp(orange20, other.orange20, t),
      orange10: Color.lerp(orange10, other.orange10, t),
      orange5: Color.lerp(orange5, other.orange5, t),
      orange2: Color.lerp(orange2, other.orange2, t),
      orange1: Color.lerp(orange1, other.orange1, t),
      blue90: Color.lerp(blue90, other.blue90, t),
      blue80: Color.lerp(blue80, other.blue80, t),
      blue70: Color.lerp(blue70, other.blue70, t),
      blue60: Color.lerp(blue60, other.blue60, t),
      blue50: Color.lerp(blue50, other.blue50, t),
      blue40: Color.lerp(blue40, other.blue40, t),
      blue30: Color.lerp(blue30, other.blue30, t),
      blue20: Color.lerp(blue20, other.blue20, t),
      blue10: Color.lerp(blue10, other.blue10, t),
      blue5: Color.lerp(blue5, other.blue5, t),
      blue1: Color.lerp(blue1, other.blue1, t),
      green90: Color.lerp(green90, other.green90, t),
      green80: Color.lerp(green80, other.green80, t),
      green70: Color.lerp(green70, other.green70, t),
      green60: Color.lerp(green60, other.green60, t),
      green50: Color.lerp(green50, other.green50, t),
      green40: Color.lerp(green40, other.green40, t),
      green30: Color.lerp(green30, other.green30, t),
      green20: Color.lerp(green20, other.green20, t),
      green10: Color.lerp(green10, other.green10, t),
      green5: Color.lerp(green5, other.green5, t),
      red90: Color.lerp(red90, other.red90, t),
      red80: Color.lerp(red80, other.red80, t),
      red70: Color.lerp(red70, other.red70, t),
      red60: Color.lerp(red60, other.red60, t),
      red50: Color.lerp(red50, other.red50, t),
      red40: Color.lerp(red40, other.red40, t),
      red30: Color.lerp(red30, other.red30, t),
      red20: Color.lerp(red20, other.red20, t),
      red10: Color.lerp(red10, other.red10, t),
      red5: Color.lerp(red5, other.red5, t),
      text90: Color.lerp(text90, other.text90, t),
      text80: Color.lerp(text80, other.text80, t),
      text70: Color.lerp(text70, other.text70, t),
      text60: Color.lerp(text60, other.text60, t),
      text50: Color.lerp(text50, other.text50, t),
      text40: Color.lerp(text40, other.text40, t),
      text30: Color.lerp(text30, other.text30, t),
      text20: Color.lerp(text20, other.text20, t),
      text10: Color.lerp(text10, other.text10, t),
      text5: Color.lerp(text5, other.text5, t),
      text1: Color.lerp(text1, other.text1, t),
      darkColor: Color.lerp(darkColor, other.darkColor, t),
      white: Color.lerp(white, other.white, t),
      gray: Color.lerp(gray, other.gray, t),
      gray1: Color.lerp(gray1, other.gray1, t),
      gray2: Color.lerp(gray2, other.gray2, t),
      gray3: Color.lerp(gray3, other.gray3, t),
      fafa: Color.lerp(fafa, other.fafa, t),
      text70Static: Color.lerp(text70Static, other.text70Static, t),
      whiteStatic: Color.lerp(whiteStatic, other.whiteStatic, t),
      orange60Static: Color.lerp(orange60Static, other.orange60Static, t),
      text90Static: Color.lerp(text90Static, other.text90Static, t),
      wStatic: Color.lerp(wStatic, other.wStatic, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the print() method.
  @override
  String toString() => 'CustomColors('
      'success: $green5, danger: $red5)';

  // the light theme
  static CustomColors light = const CustomColors(
    background1: Color(0xffF0F0F4),
    background2: Color(0xFFF6F6F9),
    background3: Color(0xFFE7E7EE),
    orange90: Color(0xffE65200),
    orange80: Color(0xffEF6D00),
    orange70: Color(0xffF57D00),
    orange60: Color(0xffFB8D00),
    orange50: Color(0xffFF9900),
    orange40: Color(0xffFFA826),
    orange30: Color(0xffFFB84D),
    orange20: Color(0xffFFCD80),
    orange10: Color(0xffFFE0B2),
    orange5: Color(0xffFFF3E0),
    orange2: Color(0xffF8E5BF),
    orange1: Color(0xffFDF5E6),
    blue90: Color(0xff2341E0),
    blue80: Color(0xff0066FF),
    blue70: Color(0xff0079FF),
    blue60: Color(0xff0963AA),
    blue50: Color(0xff009DFF),
    blue40: Color(0xff00ADFF),
    blue30: Color(0xff46BDFF),
    blue20: Color(0xff88D0FF),
    blue10: Color(0xffBAE2FF),
    blue5: Color(0xffE2F4FF),
    blue1: Color(0xffF1F9FB),
    red90: Color(0xff480411),
    red80: Color(0xff78071C),
    red70: Color(0xffA80A27),
    red60: Color(0xffD80D33),
    red50: Color(0xffF2274C),
    red40: Color(0xffF55774),
    red30: Color(0xffF8879C),
    red20: Color(0xffFBB7C3),
    red10: Color(0xffFDD9DF),
    red5: Color(0xffFEF1F3),
    green90: Color(0xff00992B),
    green80: Color(0xff00BB41),
    green70: Color(0xff00CE4E),
    green60: Color(0xff00CE4E),
    green50: Color(0xff00E35C),
    green40: Color(0xff00FB7D),
    green30: Color(0xff00FF99),
    green20: Color(0xff84FFB9),
    green10: Color(0xffBAFFD5),
    green5: Color(0xffE3FFEE),
    text90: Color(0xff0B0B0F),
    text80: Color(0xff20202C),
    text70: Color(0xff36364A),
    text60: Color(0xff4B4B67),
    text50: Color(0xff616185),
    text40: Color(0xff7A7A9E),
    text30: Color(0xff9898B4),
    text20: Color(0xffB5B5C9),
    text10: Color(0xffD3D3DF),
    text5: Color(0xffE7E7EE),
    text1: Color(0xffF6F6F9),
    darkColor: Color(0xff000000),
    white: Color(0xffFFFFFF),
    gray: Color(0xffD1D1D3),
    gray1: Color(0xffAEAEAE),
    gray2: Color(0xffA9A9A9),
    gray3: Color(0xffDADADA),
    fafa: Color(0xffFAFAFA),
    text70Static: Color(0xff9DDAF2),
    whiteStatic: Color(0xff000000),
    orange60Static: Color(0xffFFBD59),
    text90Static: Color(0xff003545),
    wStatic: Color(0xffFFFFFF),
  );

  // the dark theme
  static CustomColors dark = const CustomColors(
    background1: Color(0xff0B0B0F),
    background2: Color(0xff15151E),
    background3: Color(0xff1C1C26),
    orange90: Color(0xffFFF3E0),
    orange80: Color(0xffFFE0B2),
    orange70: Color(0xffFFCD80),
    orange60: Color(0xffFFBD59),
    orange50: Color(0xffFF9900),
    orange40: Color(0xffD98200),
    orange30: Color(0xffBA7000),
    orange20: Color(0xff593600),
    orange10: Color(0xff402600),
    orange5: Color(0xff1C1100),
    orange2: Color(0xff1C1100),
    orange1: Color(0xff1C1100),
    blue90: Color(0xffFFFFFF),
    blue80: Color(0xffC8E8FC),
    blue70: Color(0xff92D0F7),
    blue60: Color(0xff64BAEF),
    blue50: Color(0xff41A5E3),
    blue40: Color(0xff2691D3),
    blue30: Color(0xff147DBE),
    blue20: Color(0xff0968A3),
    blue10: Color(0xff025284),
    blue5: Color(0xff003D63),
    blue1: Color(0xff003D63),
    red90: Color(0xffFEE7EB),
    red80: Color(0xffFBB7C3),
    red70: Color(0xffF8879C),
    red60: Color(0xffF55774),
    red50: Color(0xffF2274C),
    red40: Color(0xffD80D33),
    red30: Color(0xffA80A27),
    red20: Color(0xff78071C),
    red10: Color(0xff560514),
    red5: Color(0xff3E040F),
    green90: Color(0xffE3FFEE),
    green80: Color(0xffBAFFD5),
    green70: Color(0xff84FFB9),
    green60: Color(0xff00FF99),
    green50: Color(0xff00FB7D),
    green40: Color(0xff00E35C),
    green30: Color(0xff00CE4E),
    green20: Color(0xff00CE4E),
    green10: Color(0xff00BB41),
    green5: Color(0xf100992B),
    text90: Color(0xffF0F0F4),
    text80: Color(0xffD3D3DF),
    text70: Color(0xffB5B5C9),
    text60: Color(0xff9898B4),
    text50: Color(0xff7A7A9E),
    text40: Color(0xff616185),
    text30: Color(0xff4B4B67),
    text20: Color(0xff36364A),
    text10: Color(0xff272735),
    text5: Color(0xff1C1C26),
    text1: Color(0xff15151E),
    darkColor: Color(0xffffffff),
    white: Color(0xff1C1C26),
    gray: Color(0xff75757A),
    gray1: Color(0xff75757A),
    gray2: Color(0xff75757A),
    gray3: Color(0xff75757A),
    fafa: Color(0xff75757A),
    text70Static: Color(0xff9DDAF2),
    whiteStatic: Color(0xff000000),
    orange60Static: Color(0xffFFBD59),
    text90Static: Color(0xff003545),
    wStatic: Color(0xffFFFFFF),
  );
}
