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
        title: Text("Settings",
            style: TextStyle(fontSize: 30, fontFamily: "Magic1")),
        backgroundColor: Color.fromRGBO(105, 212, 55, 1),
      ),
      backgroundColor: Color.fromRGBO(31, 31, 31, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 150),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/x_1.jpg")),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 150),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/o_1.png")),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                //margin: EdgeInsets.only(left: 100),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/o_1.png")),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/x_1.jpg")),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: button(
                  width: 100,
                  hight: 70,
                  color: Color.fromARGB(255, 167, 68, 101),
                  icon: Icon(Icons.music_note),
                  name: "turn on",
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                child: button(
                  width: 100,
                  hight: 70,
                  color: Color.fromARGB(255, 167, 68, 101),
                  icon: Icon(Icons.music_off),
                  name: "turn off",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(
                width: 200,
                hight: 50,
                color: Color.fromRGBO(44, 65, 110, 1),
                icon: Icon(Icons.clear),
                name: "Clear Score",
              )
            ],
          ),
        ],
      ),
    );
  }
}
