import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/catalog.dart';
import '../themes.dart';

class MyCatalogItem extends StatelessWidget {
  final Item games;
  const MyCatalogItem({super.key, required this.games});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: 150,
        width: 150,
        color: Colors.deepPurple,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                child: Hero(
                    tag: Key(games.id.toString()),
                    child: Image.network(games.image)),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    games.name,
                    style: MyTheme().mid,
                  ),
                  Text(
                    games.developer,
                    style: MyTheme().s,
                  ),
                  Text(
                    games.rating,
                    style: MyTheme().rating,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration:
                            BoxDecoration(color: Colors.deepPurple.shade300),
                        child: ButtonBar(
                          children: [
                            Text(
                              "\$${games.price}",
                              style: MyTheme().s,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print("BOUGHT");
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green),
                              ),
                              child: Icon(CupertinoIcons.cart),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print("REMOVED");
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                              ),
                              child: Icon(CupertinoIcons.xmark_circle),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
