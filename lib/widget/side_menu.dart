import 'package:flutter/material.dart';
import 'package:psxmotors/widget/login_button.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = HexColor("#6495ED");
    Color _splashColor = HexColor("#7DF9FF");
    Color _textColor = HexColor("#6495ED");
    Color _bodyColor = HexColor("#28282B");
    Color textColor = Colors.white;
    return Drawer(
      backgroundColor: _bodyColor,
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 50,
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Text(
                    "PSX Motors Classified",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LoginButton(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home_outlined,
                              color: textColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.directions_car,
                              color: textColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Popular Vehicles",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_box_rounded,
                              color: textColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Featured Items",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.block,
                              color: textColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Blog",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: textColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Setting",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: textColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Phone",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.thumb_up_off_alt_outlined,
                              color: textColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Rate This App",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.share,
                              color: textColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Share This App",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ],
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
