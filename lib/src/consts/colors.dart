import 'package:flutter/material.dart';

class UIColor {
  static const Color adobeXDColor = Color(0xff470137);

  static const Color hireMeAppBarColor = Color(0xffF94D1E);
  static const Color primaryColor = Color(0xff17B572);
  static const Color blackColor = Color(0xff000000);
  static const Color whiteColor = Color(0xffffffff);

  static const Color secondaryColor1 = Color(0xffFFF1DA);
  static const Color secondaryColor2 = Color(0xffB9F5DC);
  static const Color secondaryColor3 = Color(0xffFFDDDD);

  static const LinearGradient gradientColor = LinearGradient(
    colors: [
      Color(0xffFF946D),
      Color(0xffFF7D68),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const LinearGradient contactGradient = LinearGradient(
    colors: [
      Color(0xff747DEF),
      Color(0xff5E3BE1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
