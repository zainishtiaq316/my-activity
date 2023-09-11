import 'package:flutter/material.dart';

import '../widget/side_menu.dart';

class NotifactionScreen extends StatelessWidget {
  const NotifactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Center(child: Text("Favourite")),
      ),
      body: Container(
        child: Text("Notification Screen"),
      ),
    );
  }
}
