import 'package:flutter/material.dart';
import 'package:psxmotors/screens/home_screen.dart';

import '../model/featureditems.dart';
import '../widget/featured/item_card.dart';
import '../widget/side_menu.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = HexColor("#6495ED");
    Color _splashColor = HexColor("#7DF9FF");
    Color _textColor = HexColor("#6495ED");
    Color _bodyColor = HexColor("#28282B");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: _textColor,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        backgroundColor: _bodyColor,
        title: Row(
          children: [
            Text(
              "Featured",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  Icons.search_sharp,
                  color: _textColor,
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  Icons.person_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisExtent: 280,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) => SizedBox(
            width: 220,
            child: ItemCard(data: items[index]),
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
