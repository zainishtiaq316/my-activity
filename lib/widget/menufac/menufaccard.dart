import 'package:flutter/material.dart';
import 'package:psxmotors/widget/itemdetails.dart';

import '../../model/MenufactureItems.dart';
import '../../model/featureditems.dart';

class MenuFacCard extends StatelessWidget {
  menufactureItems menufaccard;
  MenuFacCard({required this.menufaccard, super.key});

  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = HexColor("#6495ED");
    Color _splashColor = HexColor("#7DF9FF");
    Color _textColor = HexColor("#6495ED");
    Color _bodyColor = HexColor("#28282B");
    return Card(
      elevation: 0.4,
      color: _bodyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: Colors.transparent,
        onTap: () {
          /*Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ItemDetails(details: data,)),
  );*/
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  menufaccard.Image,
                  width: double.maxFinite,
                  height: 50,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  '${menufaccard.car}',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
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
