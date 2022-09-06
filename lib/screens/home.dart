import 'package:flutter/material.dart';
import 'package:xo/screens/multi_player.dart';
import 'package:xo/screens/settings.dart';
import 'package:xo/screens/single_player.dart';

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
      appBar: AppBar(
        title: Text(
          "Welcome",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.lime,
      ),
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
              Container(
                width: 385,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Single()),
                  ),
                  label: const Text('Single Player'),
                  icon: const Icon(Icons.person),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 167, 68, 101),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 385,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Multi()),
                  ),
                  label: const Text('Multiplayer'),
                  icon: const Icon(Icons.people),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 167, 68, 101),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 385,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Settings()),
                  ),
                  label: Text('Settings'),
                  icon: Icon(Icons.settings),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 167, 68, 101),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
