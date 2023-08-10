import 'package:catalog_app/pages/home_details_page.dart';
import 'package:flutter/material.dart';
import '../../models/catalog.dart';
import 'catalog_item.dart';

class MyCatalogList extends StatelessWidget {
  const MyCatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final games = CatalogModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailsPage(games: games),
              ),
            ),
            child: MyCatalogItem(games: games),
          );
        },
      ),
    );
  }
}
