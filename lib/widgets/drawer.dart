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
                      border: Border.all(color: Colors.deepPurple, width: 3)),
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
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.profileRoute);
              },
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
              height: 200,
            ),
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text(
                          "LOG OUT",
                          style: TextStyle(fontSize: 20),
                        ),
                        content: Text(
                          "Are you sure you want to Logout?",
                          style: TextStyle(fontSize: 16),
                        ),
                        actions: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.loginRoute);
                            },
                            child: Text(
                              "YES",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "NO",
                              style: TextStyle(fontWeight: FontWeight.bold,),
                            ),
                          ),
                        ],
                      );
                    });
                //Navigator.pushNamed(context, Routes.loginRoute);
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
