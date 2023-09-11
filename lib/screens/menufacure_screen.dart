import 'package:flutter/material.dart';

import '../widget/side_menu.dart';

class MenuFacturersScreen extends StatelessWidget {
  const MenuFacturersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Center(child: Text("MenuFacturers Screen")),
      ),
      body: Container(
        child: Text("MenuFacturers Screen"),
      ),
    );
  }
}
