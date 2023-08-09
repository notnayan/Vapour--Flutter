import 'package:catalog_app/widgets/bottom_navbar.dart';
import 'package:catalog_app/widgets/carousel.dart';

import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: Text("VAPOUR"),
        actions: [
          IconButton(
            onPressed: () {
              print("No new notifications!");
            },
            icon: Icon(CupertinoIcons.bell_fill),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Routes.profileRoute);
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
            MyCarousel(),
            SizedBox(
              height: 10,
            ),
            MySearch(),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 0, 2),
                child: Text(
                  "YOUR DISCOVERY QUEUE",
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
