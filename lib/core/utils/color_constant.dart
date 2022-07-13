import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007e = fromHex('#7e000000');

  static Color gray500 = fromHex('#a6a6a6');

  static Color gray800 = fromHex('#4f4f4f');

  static Color gray900 = fromHex('#121212');

  static Color gray50 = fromHex('#fbfbfc');

  static Color gray100 = fromHex('#f1f2f3');

  static Color black90075 = fromHex('#75000000');

  static Color black900 = fromHex('#000000');

  static Color lightGreen500 = fromHex('#85c454');

  static Color gray10075 = fromHex('#75f1f2f3');

  static Color black90063 = fromHex('#63000000');

  static Color blue100 = fromHex('#c6e5f7');

  static Color black90019 = fromHex('#19000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
