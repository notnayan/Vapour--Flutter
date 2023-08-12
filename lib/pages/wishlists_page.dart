import 'package:catalog_app/widgets/search_box.dart';
import 'package:flutter/material.dart';
import '../models/catalog.dart';
import '../widgets/home_widgets/bottom_navbar.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

import '../widgets/wishlist_widgets/catalog_header.dart';
import '../widgets/wishlist_widgets/catalog_list.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("W I S H L I S T"),
      ),
      backgroundColor: Colors.deepPurple.shade300,
      body: SafeArea(
        child: Column(
          children: [
            MyCatalogHeader(),
            MySearch(),
            if (CatalogModel.items.isNotEmpty)
              Expanded(child: MyCatalogList())
            else
              Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavbar(),
    );
  }
}






