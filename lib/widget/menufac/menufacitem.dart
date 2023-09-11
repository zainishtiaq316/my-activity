import 'package:flutter/material.dart';
import 'package:psxmotors/model/MenufactureItems.dart';

import '../../model/featureditems.dart';
import 'menufaccard.dart';

class MenuFacItem extends StatelessWidget {
  const MenuFacItem({super.key});

  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = HexColor("#6495ED");
    Color _splashColor = HexColor("#7DF9FF");
    Color _textColor = HexColor("#6495ED");
    Color _bodyColor = HexColor("#28282B");
    return SizedBox(
      height: 280,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SizedBox(
              width: 100, child: MenuFacCard(menufaccard: menuitems[index])),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: items.length),
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
