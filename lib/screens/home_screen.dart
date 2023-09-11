import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psxmotors/provider/category_provider.dart';
import 'package:psxmotors/provider/product_provider.dart';
import 'package:psxmotors/screens/list_screen.dart';
import 'package:psxmotors/screens/profile.dart';
import 'package:psxmotors/widget/featured/featureditem.dart';
import 'package:psxmotors/widget/login_button.dart';
import 'package:psxmotors/widget/menufac/menufacitem.dart';
import 'package:psxmotors/widget/side_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool _searchBar = false;
    final productProvider = Provider.of<ProductProvider>(context);
    final categoryProvider = Provider.of<CategoryProvider>(context);

    Color _backgroundColor = HexColor("#6495ED");
    Color _splashColor = HexColor("#7DF9FF");
    Color _textColor = HexColor("#6495ED");
    Color _bodyColor = HexColor("#28282B");
    return Scaffold(
        backgroundColor: _bodyColor,
        drawer: NavBar(),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: _textColor,
          ),
          backgroundColor: _bodyColor,
          title: Row(
            children: [
              Text(
                "PSX Motors Classified",
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Sell Your Car With Ease",
                              style: TextStyle(
                                  color: _textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/cardealing.png",
                              width: 70,
                              height: 70,
                            )
                          ],
                        ),
                        Text(
                          "Upload your car to our mobile app and reach potential buyers looking to purchase a car",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _backgroundColor,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 18, right: 18),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/trasnparent.png",
                                      color: Colors.white,
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Sell Your Vehicle",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "All",
                        style: TextStyle(
                          color: _textColor,
                          fontSize: 17,
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: _textColor,
                            size: 30,
                          )),
                    ],
                  ),
                ),
                Text(
                  "Discover Your",
                  style: TextStyle(
                      color: _textColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Favourite Vehicle",
                  style: TextStyle(
                      color: _textColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                    child: Row(
                  children: [
                    Text(
                      "Featured Items",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ListScreen()));
                        },
                        child: Text(
                          "View More",
                          style: TextStyle(
                              color: _textColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )),
                FeaturedItem(),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Row(
                  children: [
                    Text(
                      "Manufacturers",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ListScreen()));
                        },
                        child: Text(
                          "View More",
                          style: TextStyle(
                              color: _textColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          productProvider.fetchProduct();
                        },
                        child: Text('Fetch Product'),
                      ),
                      if (productProvider.products.isNotEmpty)
                        Container(
                          height: 400,
                          child: ListView.builder(
                              itemCount: productProvider.products.length,
                              itemBuilder: (context, index) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: Colors.yellow),
                                      child: Center(
                                        child: Text(
                                          'Product Name: ${productProvider.products[index].name}',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: Colors.black),
                                      child: Center(
                                        child: Text(
                                          'Details: ${productProvider.products[index].details}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: Colors.grey),
                                      child: Center(
                                        child: Text(
                                          'Added By: ${productProvider.products[index].added_by}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: Colors.grey),
                                      child: Center(
                                        child: Text(
                                          'Slug: ${productProvider.products[index].slug}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          categoryProvider.fetchCategory();
                        },
                        child: Text('Fetch Category'),
                      ),
                      if (categoryProvider.category.isNotEmpty)
                        Container(
                            height: 400,
                            child: ListView.builder(
                                itemCount: categoryProvider.category.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Container(
                                        width: 200,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            color: Colors.yellow),
                                        child: Center(
                                          child: Text(
                                            'Category Name: ${categoryProvider.category[index].name}',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 200,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            color: Colors.black),
                                        child: Center(
                                          child: Text(
                                            'Slug: ${categoryProvider.category[index].slug}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 200,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            color: Colors.grey),
                                        child: Center(
                                          child: Text(
                                            'Icon: ${categoryProvider.category[index].icon}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 200,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            color: Colors.grey),
                                        child: Center(
                                          child: Text(
                                            'Slug: ${categoryProvider.category[index].slug}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 200,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            color: Colors.grey),
                                        child: Center(
                                          child: Text(
                                            'Sub: ${categoryProvider.category[index].sub}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                })),
                    ],
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
