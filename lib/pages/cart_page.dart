import 'package:catalog_app/widgets/home_widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import '../widgets/cart_widgets/cart_list.dart';
import '../widgets/cart_widgets/cart_total.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("C A R T"),
      ),
      backgroundColor: Colors.deepPurple.shade300,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCartList(),
            ),
          ),
          Divider(),
          MyCartTotal(),
        ],
      ),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }
}



