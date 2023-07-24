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
        title: const Text("Catalog App"),
      ),
        body: Center(
          child: Text("Hi $name"),
        ),
        drawer: const Drawer(),
      );
  }
}