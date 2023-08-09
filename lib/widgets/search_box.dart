import 'package:flutter/material.dart';

class MySearch extends StatefulWidget {
  const MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.deepPurple),
          // borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search for games ...",
              hintStyle: TextStyle(color: Colors.white38),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.white38,
                size: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
