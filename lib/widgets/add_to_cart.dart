import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/cart.dart';
import '../models/catalog.dart';

class AddToCart extends StatefulWidget {
  final Item games;

  const AddToCart({
    super.key,
    required this.games,
  });

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.games);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = true;
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;
          _cart.add(widget.games);
          setState(() {});
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
