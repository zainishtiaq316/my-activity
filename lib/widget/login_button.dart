import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = HexColor("##0C2D48");
    return InkWell(
      splashColor: backgroundColor,
      focusColor: backgroundColor,
      highlightColor: backgroundColor,
      onTap: () {},
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Center(
              child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ))),
    );
  }
}

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
