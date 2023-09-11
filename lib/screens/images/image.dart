import 'package:flutter/material.dart';
import 'package:psxmotors/model/featureditems.dart';

import 'package:psxmotors/widget/itemdetails.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key, required this.images});

  final FeaturedItems images;
  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  Color _backgroundColor = HexColor("#6495ED");
  Color _splashColor = HexColor("#7DF9FF");
  Color _textColor = HexColor("#6495ED");
  Color _bodyColor = HexColor("#28282B");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bodyColor,
      appBar: AppBar(
          title: Text(
            "Gallery",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: _bodyColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: _textColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 5),
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                widget.images.Image,
                width: 200,
                height: 200,
              )),
        ),
      ),
    );
  }
}
