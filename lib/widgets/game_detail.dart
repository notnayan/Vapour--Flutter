import 'package:catalog_app/models/cart.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';
import 'add_to_cart.dart';

class MyGameDetails extends StatelessWidget {
  final Item games;
  const MyGameDetails({super.key, required this.games});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 450,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 12),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.network(
                      games.image,
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(games.name, style: MyTheme().mid),
                      SizedBox(
                        height: 4,
                      ),
                      Text(games.developer, style: MyTheme().developer),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(games.rating, style: MyTheme().rating),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                games.description,
                style: MyTheme().description,
              ),
              Spacer(),
              Container(
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${games.price}",
                        style: MyTheme().price,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Transform.scale(
                        scale: 1.25,
                        child: AddToCart(games: games),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


