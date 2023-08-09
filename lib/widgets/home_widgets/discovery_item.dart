import 'package:flutter/material.dart';
import '../../models/catalog.dart';
import '../themes.dart';

class MyDiscoveryItem extends StatelessWidget {
  final Item discovery;
  const MyDiscoveryItem({super.key, required this.discovery});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      color: Colors.deepPurple,
      child: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 0.75,
                child: Image.network(
                  discovery.image,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -3, // Adjust the position as needed
            left: 35, // Adjust the position as needed
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 75,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "\$${discovery.price}",
                    style: MyTheme().s,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
