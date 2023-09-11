import 'package:flutter/material.dart';
import 'package:psxmotors/screens/notification.dart';
import 'package:psxmotors/screens/favourite_screen.dart';
import 'package:psxmotors/screens/login_screen.dart';
import 'package:psxmotors/screens/menufacure_screen.dart';

import '../screens/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    loginScreen(),
    MenuFacturersScreen(),
    favouritescreen(),
    NotifactionScreen()
  ];
  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = HexColor("#6495ED");
    Color _splashColor = HexColor("#7DF9FF");
    Color _textColor = HexColor("#6495ED");
    Color _bodyColor = HexColor("#28282B");
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: _bodyColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
                child: Icon(
              Icons.home,
            )),
            activeIcon: Container(
                decoration: (BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.0, color: _textColor),
                  ),
                )),
                child: Icon(Icons.home, color: _textColor)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Container(child: Icon(Icons.comment_outlined)),
            activeIcon: Container(
                decoration: (BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.0, color: _textColor),
                  ),
                )),
                child: Icon(Icons.comment, color: _textColor)),
            label: "Comment",
          ),
          BottomNavigationBarItem(
            icon: Container(child: Icon(Icons.directions_car)),
            label: "Menufacturers",
            activeIcon: Container(
                decoration: (BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.0, color: _textColor),
                  ),
                )),
                child: Icon(Icons.directions_car, color: _textColor)),
          ),
          BottomNavigationBarItem(
            icon: Container(child: Icon(Icons.favorite_outline)),
            activeIcon: Container(
                decoration: (BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.0, color: _textColor),
                  ),
                )),
                child: Icon(Icons.favorite_outline, color: _textColor)),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
            icon: Container(child: Icon(Icons.notifications_outlined)),
            label: "Notification",
            activeIcon: Container(
                decoration: (BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.0, color: _textColor),
                  ),
                )),
                child: Icon(Icons.notifications_outlined, color: _textColor)),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
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
