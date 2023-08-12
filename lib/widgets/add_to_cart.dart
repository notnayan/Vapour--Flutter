import 'package:catalog_app/core/store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import '../models/cart.dart';
import '../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item games;

  AddToCart({
    super.key,
    required this.games,
  });

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(games);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(games);
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      ),
      child: isInCart
          ? Icon(Icons.done)
          : Icon(
              CupertinoIcons.cart,
            ),
    );
  }
}
