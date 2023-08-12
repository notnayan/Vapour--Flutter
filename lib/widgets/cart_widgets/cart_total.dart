import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import '../../core/store.dart';
import '../../models/cart.dart';
import '../themes.dart';

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
