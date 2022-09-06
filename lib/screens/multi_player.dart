import 'package:flutter/material.dart';

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
