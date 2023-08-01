import 'dart:convert';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/bottom_navbar.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    //  loadData();
  }

  // loadData() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   final catalogJson =
  //       await rootBundle.loadString("assets/files/catalog.JSON");
  //   final decodedData = jsonDecode(catalogJson);
  //   var gamesData = decodedData["games"];
  //   CatalogModel.items =
  //       List.from(gamesData).map<Item>((item) => Item.fromMap(item)).toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: Text("VAPOUR"),
        actions: [
          IconButton(
            onPressed: () {
              print("Page Refreshed");
            },
            icon: Icon(CupertinoIcons.refresh),
          ),
          InkWell(
            onTap: () {
              print("VAPOUR");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/logo.png"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 0, 2),
                child: Text(
                  "FEATURED & RECOMMENDED",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: AnotherCarousel(
                images: [
                  NetworkImage(
                      "https://cdn.cloudflare.steamstatic.com/steam/apps/814380/capsule_616x353.jpg?t=1678991267"),
                  NetworkImage(
                      "https://cdn1.epicgames.com/b30b6d1b4dfd4dcc93b5490be5e094e5/offer/RDR2476298253_Epic_Games_Wishlist_RDR2_2560x1440_V01-2560x1440-2a9ebe1f7ee202102555be202d5632ec.jpg"),
                  NetworkImage(
                      "https://cdn.cloudflare.steamstatic.com/steam/apps/359550/capsule_616x353.jpg?t=1690498575"),
                  NetworkImage(
                      "https://cdn.akamai.steamstatic.com/steam/apps/381210/capsule_616x353.jpg?t=1690568846"),
                  NetworkImage(
                      "https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/capsule_616x353.jpg?t=1683618443")
                ],
                dotSize: 7,
                indicatorBgPadding: 7,
                animationCurve: Curves.easeIn,
                // dotBgColor: Colors.black,
                dotColor: Colors.deepPurple,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.deepPurple),
                 // borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for games ...",
                      hintStyle: TextStyle(color: Colors.white38),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white38,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 0, 2),
                child: Text(
                  "BROWSE",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }
}
