import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import '../../core/store.dart';
import '../../models/cart.dart';

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