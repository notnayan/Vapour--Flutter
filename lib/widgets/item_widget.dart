import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} SIKE");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.developer),
        trailing: Text(item.price.toString(), style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),),
      ),
    );
  }
}