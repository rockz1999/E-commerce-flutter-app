import 'package:flutter/material.dart';

abstract class Fonts {
  static String get gibsonSemiBold => "gibson_semibold";
  static String get gibsonRegular => "gibson_regular";

  static String get poppinsRegular => "poppins_regular";
  static String get poppinsSemiBold => "poppins_semibold";
  static String get poppinsBold => "poppins_bold";
}

abstract class FontSizes {
  static double scale = 1;

  static double get f46 => 46 * scale;
  static double get f28 => 28 * scale;
  static double get f20 => 18 * scale;
  static double get f18 => 18 * scale;
  static double get f16 => 16 * scale;
  static double get f17 => 17 * scale;
  static double get f14 => 14 * scale;
  static double get f13 => 13 * scale;
  static double get f12 => 12 * scale;
  static double get f10 => 10 * scale;
}

abstract class FontColors {
  static Color get bgColor => Color(0xFFF6F6F6);
  static Color get primaryColor => Color(0xFFDE4463);
  static Color get white78 => Color(0xC7FFFFFF);
  static Color get secondaryColor => Color(0xFF132743);
  static Color get cardColor => Color(0xFFFAF3DD);
  static Color get errorColor => Color(0xFFCD0A0A);
  static Color get greyDark => Color(0xFF454F63);
  static Color get greyMid => Color(0xFF959DAD);
  static Color get greyLight => Color(0xFFBFC5D3);
  static Color get greyVeryLight => Color(0xFFEBEBEB);
}

const MaterialColor primarySwatch = const MaterialColor(
  0xFFDE1692,
  const <int, Color>{
    50: const Color(0xFFDE4463),
    100: const Color(0xFFDE4463),
    200: const Color(0xFFDE4463),
    300: const Color(0xFFDE4463),
    400: const Color(0xFFDE4463),
    500: const Color(0xFFDE4463),
    600: const Color(0xFFDE4463),
    700: const Color(0xFFDE4463),
    800: const Color(0xFFDE4463),
    900: const Color(0xFFDE4463),
  },
);

abstract class TextStyles {
  static TextStyle get gibsonSemiBold =>
      TextStyle(fontFamily: Fonts.gibsonSemiBold);
  static TextStyle get gibsonRegular =>
      TextStyle(fontFamily: Fonts.gibsonRegular);
  static TextStyle get poppinsRegular =>
      TextStyle(fontFamily: Fonts.poppinsRegular);
  static TextStyle get poppinsSemiBold =>
      TextStyle(fontFamily: Fonts.poppinsSemiBold);
  static TextStyle get poppinsBold => TextStyle(fontFamily: Fonts.poppinsBold);
}

extension TextStyleHelpers on TextStyle {
  TextStyle get f46 => copyWith(fontSize: FontSizes.f46);
  TextStyle get f28 => copyWith(fontSize: FontSizes.f28);
  TextStyle get f20 => copyWith(fontSize: FontSizes.f20);
  TextStyle get f18 => copyWith(fontSize: FontSizes.f18);
  TextStyle get f17 => copyWith(fontSize: FontSizes.f17);
  TextStyle get f16 => copyWith(fontSize: FontSizes.f16);
  TextStyle get f14 => copyWith(fontSize: FontSizes.f14);
  TextStyle get f12 => copyWith(fontSize: FontSizes.f12);
  TextStyle get f13 => copyWith(fontSize: FontSizes.f13);
  TextStyle get f10 => copyWith(fontSize: FontSizes.f10);

  ///#DE1692
  TextStyle get primaryColor => copyWith(color: FontColors.primaryColor);

  ///#FFFFFF
  TextStyle get white => copyWith(color: Colors.white);

  //#Cd0A0A
  TextStyle get errorColor => copyWith(color: FontColors.errorColor);

  //#132743
  TextStyle get secondaryColor => copyWith(color: FontColors.secondaryColor);

  ///#C7FFFF
  TextStyle get white78 => copyWith(color: FontColors.white78);

  ///#000000
  TextStyle get black => copyWith(color: Colors.black);

  ///#454F63
  TextStyle get greyDark => copyWith(color: FontColors.greyDark);

  ///#959DAD
  TextStyle get greyMid => copyWith(color: FontColors.greyMid);

  ///#BFC5D3
  TextStyle get greyLight => copyWith(color: FontColors.greyLight);

  ///#EBEBEB
  TextStyle get greyVeryLight => copyWith(color: FontColors.greyVeryLight);
}
