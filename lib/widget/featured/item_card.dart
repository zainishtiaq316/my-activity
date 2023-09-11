import 'package:flutter/material.dart';
import 'package:psxmotors/widget/itemdetails.dart';

import '../../model/featureditems.dart';

class ItemCard extends StatelessWidget {
  FeaturedItems data;
  ItemCard({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = HexColor("#6495ED");
    Color _splashColor = HexColor("#7DF9FF");
    Color _textColor = HexColor("#6495ED");
    Color _bodyColor = HexColor("#28282B");
    return Card(
      elevation: 0.4,
      color: Colors.grey[800],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ItemDetails(details: data)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  data.Image,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                  height: 115,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '\$ ${data.price}',
                style: TextStyle(
                    color: _textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data.carName,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    data.adminPic,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.adminName,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        data.months,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  )
                ],
              )
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
