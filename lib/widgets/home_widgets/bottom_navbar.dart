import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../pages/home_page.dart';
import '../../pages/wishlists_page.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({super.key});

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _selectedIndex = 0;

  navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: GNav(
            gap: 8,
            onTabChange: navigateBottomBar,
            selectedIndex: _selectedIndex,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.house,
                text: "Home",
              ),
              GButton(
                icon: CupertinoIcons.star_circle_fill,
                text: "Wishlist",
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
