import 'package:flutter/material.dart';
import 'package:xo/screens/multi_player.dart';
import 'package:xo/screens/settings.dart';
import 'package:xo/screens/single_player.dart';

class button extends StatelessWidget {
  double width;
  double hight;
  String name;
  Color color;
  Icon icon;
  button({
    required this.width,
    required this.hight,
    required this.color,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      child: ElevatedButton.icon(
        icon: icon,
        label: Text(name,
            style: TextStyle(
                fontSize: 15,
                fontFamily: "Magic1",
                color: Color.fromARGB(255, 48, 47, 47))),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          if (name == "Single Player") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Single()),
            );
          }
          if (name == "MultiPlayer") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Multi()),
            );
          }
          if (name == "Settings") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Settings()),
            );
          }
          if (name == "Home") {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
