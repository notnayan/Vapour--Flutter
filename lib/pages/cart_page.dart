import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:catalog_app/models/cart.dart';
import 'package:catalog_app/widgets/bottom_navbar.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import '../core/store.dart';

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

class MyCartTotal extends StatelessWidget {
  const MyCartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 75,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            VxConsumer(
              notifications: {},
              builder: (BuildContext context, dynamic _, VxStatus? status) {
                return Text(
                  "\$${_cart.totalPrice.toStringAsFixed(2)}", 
                  style: MyTheme().price,
                );
              },
              mutations: {RemoveMutation},
            ),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  elevation: 0,
                  behavior: SnackBarBehavior.fixed,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'OH SNAP!',
                    message:
                        "Sorry! The current version of the application doesn't support purchase of items yet.",
                    contentType: ContentType.failure,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: Text(
                "PURCHASE",
                style: MyTheme().mid,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? Image.asset("assets/images/emptyCart.png")
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.done),
                trailing: IconButton(
                  onPressed: () => RemoveMutation(_cart.items[index]),
                  icon: Icon(Icons.remove_circle_outline_rounded),
                ),
                title: Text(_cart.items[index].name),
              );
            },
          );
  }
}
