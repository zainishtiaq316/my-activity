import 'package:flutter/material.dart';
import 'package:psxmotors/widget/side_menu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Text(
              "Profile",
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Image.asset(
                "assets/images/admin.png",
                width: 100,
                height: 100,
              ),
              Text(
                "Zain Ishtiaq",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Joined on 11-09-2023",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  AlertDialog();
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.verified_user),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Verify",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
