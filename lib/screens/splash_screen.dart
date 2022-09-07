// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:xo/screens/home.dart';

class splash extends StatefulWidget {
  @override
  _splash createState() => _splash();
}

class _splash extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 240, 139, 124),
      body: Container(
        margin: EdgeInsets.only(left: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image(image: AssetImage('assets/group1.png')),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Loading...",
                  style: TextStyle(fontSize: 20, fontFamily: "Magic1"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
