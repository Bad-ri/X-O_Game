import 'package:flutter/material.dart';

class Single extends StatefulWidget {
  const Single({super.key});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Player", style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.limeAccent,
      ),
      backgroundColor: Color.fromRGBO(175, 30, 49, 1),
      body: Container(
        width: 385,
        height: 50,
        child: ElevatedButton.icon(
          onPressed: () => Navigator.pop(context),
          label: Text('Home'),
          icon: Icon(Icons.home),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 167, 68, 101),
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
