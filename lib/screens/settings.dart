import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
