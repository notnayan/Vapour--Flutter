import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/game_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item games;

  const HomeDetailsPage({Key? key, required this.games}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: Key(games.id.toString()),
          child: Image.network(
            games.image,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        MyGameDetails(games: games),
      ],
    );
  }
}
