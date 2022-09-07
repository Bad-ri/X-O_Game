// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:xo/function/functionality.dart';
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
        title: Text("Multi Player",
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
                "First Player : " + "$x_score",
                style: TextStyle(fontSize: 30, fontFamily: "Magic1"),
              ),
              Text("Second Player : " + "$o_score",
                  style: TextStyle(fontSize: 30, fontFamily: "Magic1")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "$x",
                style: TextStyle(fontSize: 40, fontFamily: "Magic1"),
              ),
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
                        onTap: () {
                          setState(() {
                            Func(index);
                          });
                        },
                        child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 5)),
                            child: Center(
                              child: Text(
                                box2[index],
                                style:
                                    TextStyle(fontSize: 30, color: Colors.red),
                              ),
                            )),
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
              Container(
                width: 385,
                height: 50,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.clear),
                  label: Text("Clear",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Magic1",
                          color: Color.fromARGB(255, 48, 47, 47))),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 167, 68, 101),
                  ),
                  onPressed: (() {
                    setState(() {
                      for (int i = 0; i < 9; i++) {
                        box[i] = '';
                        box2[i] = '';
                        start = 1;
                        win = "";
                        x = "";
                      }
                    });
                  }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
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
