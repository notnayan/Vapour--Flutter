import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.black,
                ),
                accountName: Text(
                  "N A Y A N",
                  style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily),
                ),
                accountEmail: Text(
                  "nayanrajkhanalz@gmail.com",
                  style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily),
                ),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/headshot.png"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            // LISTTILES
            const ListTile(
              leading: Icon(
                CupertinoIcons.person_fill,
                color: Colors.white,
              ),
              title: Text(
                "P R O F I L E",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.bell,
                color: Colors.white,
              ),
              title: Text(
                "N O T I F I C A T I O N S",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "S E T T I N G S",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text(
                "S U P P O R T",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            const SizedBox(
              height: 150,
            ),
             ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.loginRoute);
              },
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "L O G O U T",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
