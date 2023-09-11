import 'dart:ui';

import '../screens/home_screen.dart';

Color _backgroundColor = HexColor("#6495ED");
Color _splashColor = HexColor("#7DF9FF");
Color _textColor = HexColor("#6495ED");
Color _bodyColor = HexColor("#28282B");

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
