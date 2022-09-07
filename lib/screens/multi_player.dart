import 'package:flutter/material.dart';

import '../widget/button.dart';

class Multi extends StatefulWidget {
  const Multi({super.key});

  @override
  State<Multi> createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MultiPlayer", style: TextStyle(fontSize: 30)),
          backgroundColor: Colors.limeAccent,
        ),
        backgroundColor: Color.fromRGBO(19, 128, 37, 1),
        body: button(
          width: 385,
          hight: 50,
          color: Color.fromARGB(255, 167, 68, 101),
          icon: Icon(Icons.person),
          name: "Home",
        ));
  }
}
