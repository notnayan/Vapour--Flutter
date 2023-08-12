import 'dart:convert';
import 'package:catalog_app/core/store.dart';
import 'package:catalog_app/models/cart.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/pages/cart_page.dart';
import 'package:catalog_app/widgets/home_widgets/bottom_navbar.dart';
import 'package:catalog_app/widgets/home_widgets/carousel.dart';
import 'package:catalog_app/widgets/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vxstate/vxstate.dart';
import '../utils/routes.dart';
import '../widgets/home_widgets/discovery_list.dart';
import '../widgets/home_widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.JSON");
    final decodedData = jsonDecode(catalogJson);
    var gamesData = decodedData["games"];
    CatalogModel.items =
        List.from(gamesData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: Text("VAPOUR"),
        actions: [
          VxBuilder(
            mutations: {AddMutation, RemoveMutation},
            builder: (BuildContext context, dynamic _, VxStatus? status) => IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ),
                );
              },
              icon: Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(CupertinoIcons.cart_fill),
                  Positioned(
                    top: 4,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        _cart.items.length.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 0, 2),
              child: Text(
                "FEATURED & RECOMMENDED",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          if (CatalogModel.items.isNotEmpty)
            Expanded(
              child: MyDiscoveryList(),
            )
          else
            Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }
}
