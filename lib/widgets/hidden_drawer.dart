import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/pages/profile_page.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  get myTextStyle => null;

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white);

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "V A P O U R",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.cyan),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "P R O F I L E",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.cyan),
        const ProfilePage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      boxShadow: [BoxShadow(blurRadius: 20)],
      actionsAppBar: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Routes.loginRoute);
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/headshot.png"),
            ),
          ),
        ),
      ],
      backgroundColorMenu: Colors.deepPurple.shade300,
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}
