import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.house,
                text: "Home",
              ),
              GButton(
                icon: CupertinoIcons.star_circle_fill,
                text: "Favourite",
              ),
              GButton(
                icon: CupertinoIcons.compass_fill,
                text: "Explore",
              ),
              GButton(
                icon: CupertinoIcons.news_solid,
                text: "News",
              )
            ],
          ),
        ),
      ),
    );
  }
}
