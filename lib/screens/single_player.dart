// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../widget/button.dart';

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
        title: Text("Single Player",
            style: TextStyle(fontSize: 30, fontFamily: "Magic1")),
        backgroundColor: Colors.limeAccent,
      ),
      backgroundColor: Color.fromRGBO(65, 163, 126, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "First Player : ",
                style: TextStyle(fontSize: 30, fontFamily: "Magic1"),
              ),
              Text("Second Player : ",
                  style: TextStyle(fontSize: 30, fontFamily: "Magic1")),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 100),
                width: 250,
                height: 250,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List<Widget>.generate(9, (index) {
                    return GridTile(
                      child: InkWell(
                        child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 5)),
                            child: Center(
                              child: Text('tile $index'),
                            )),
                        onTap: () {
                          print("Tapped on container");
                        },
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
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
      ),
    );
  }
}
