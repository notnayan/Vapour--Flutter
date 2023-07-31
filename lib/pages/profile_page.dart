import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("P R O F I L E"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "sirSHINIGAMI",
                  style: MyTheme().myH1,
                ),
                Text(
                  "#8563",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurple),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Nayan Raj Khanal",
                  style: MyTheme().myH2,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/nepal.png"),
                Text(
                  "Nepal",
                  style: MyTheme().myH2,
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/headshot.png',
                  alignment: Alignment.topLeft,
                  width: 150,
                  height: 150,
                ),
                Text(
                  "Level",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurple, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "4",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/images/nepal.png"),
                Text(
                  "Adept Accumulator",
                  style: MyTheme().myH2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
