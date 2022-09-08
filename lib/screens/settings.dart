// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widget/button.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings", style: TextStyle(fontSize: 30)),
          backgroundColor: Colors.limeAccent,
        ),
        backgroundColor: Color.fromRGBO(32, 30, 175, 1),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Under Constraction",
                  style: TextStyle(
                      fontSize: 50, fontFamily: "Magic1", color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                button(
                  width: 385,
                  hight: 50,
                  color: Color.fromARGB(255, 167, 68, 101),
                  icon: Icon(Icons.person),
                  name: "Home",
                )
              ],
            ),
          ],
        ));
  }
}
