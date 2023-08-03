import 'package:flutter/material.dart';
import '../models/catalog.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/item_widget.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

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
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("WISHLIST"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemBuilder: ((context, index) {
                  return ItemWidget(item: CatalogModel.items[index]);
                }),
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      bottomNavigationBar: const MyBottomNavbar(),
    );
  }
}