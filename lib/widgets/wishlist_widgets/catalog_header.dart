import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../themes.dart';

class MyCatalogHeader extends StatelessWidget {
  const MyCatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 250,
          child: Text(
            "SIRSHINIGAMI'S WISHLIST",
            style: MyTheme().myH1w,
          ),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}