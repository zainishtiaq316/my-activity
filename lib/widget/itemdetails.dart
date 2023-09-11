import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:psxmotors/widget/featured/featureditem.dart';

import '../model/featureditems.dart';
import '../screens/images/image.dart';

class ItemDetails extends StatefulWidget {
  ItemDetails({Key? key, required this.details
      // ,this.name
      })
      : super(key: key);
  FeaturedItems details;

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  Color _backgroundColor = HexColor("#6495ED");
  Color _splashColor = HexColor("#7DF9FF");
  Color _textColor = HexColor("#6495ED");
  Color _bodyColor = HexColor("#28282B");
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: _bodyColor,
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(8),
          color: _bodyColor,
          child: Container(
            height: 20.0,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20.0))),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.98,
                  child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _textColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sell",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 12),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: _textColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Vehicle Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        color: _textColor,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: _textColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      widget.details.carName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_outline,
                        color: _textColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$ ${widget.details.price}",
                      style: TextStyle(color: _textColor, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      widget.details.adminPic,
                      width: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.details.adminName,
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: _textColor,
                        )),
                    Text(
                      widget.details.location,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Gallery(
                                  images: widget.details,
                                )));
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.details.Image,
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Container(
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Ads In Progress",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Image.asset(
                        widget.details.Image,
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Vehicle Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: _textColor,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Seller Info",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: _textColor,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Safety Tips",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: _textColor,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Frequently Aked Questions",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: _textColor,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: _textColor,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
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
