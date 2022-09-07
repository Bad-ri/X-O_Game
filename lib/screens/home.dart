// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:xo/widget/button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 240, 139, 124),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.only(left: 100, top: 20),
                child: Image(
                  image: AssetImage("assets/xo.png"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              button(
                width: 385,
                hight: 50,
                color: Color.fromARGB(255, 167, 68, 101),
                icon: Icon(Icons.person),
                name: "Single Player",
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              button(
                width: 385,
                hight: 50,
                color: Color.fromARGB(255, 167, 68, 101),
                icon: Icon(Icons.people),
                name: "MultiPlayer",
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              button(
                width: 385,
                hight: 50,
                color: Color.fromARGB(255, 167, 68, 101),
                icon: Icon(Icons.settings),
                name: "Settings",
              )
            ],
          ),
        ],
      ),
    );
  }
}
