import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String name = "Shailu";
    return Scaffold(
      appBar: AppBar(
        title: const Text("VAPOUR"),
      ),
      body: Center(child: Text("HI $name")),
      drawer: const MyDrawer(),
    );
  }
}
