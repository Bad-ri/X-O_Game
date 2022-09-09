// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:xo/function/functionality.dart';
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
        backgroundColor: Color.fromARGB(255, 53, 238, 77),
      ),
      backgroundColor: Color.fromRGBO(31, 31, 31, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 110,
                height: 70,
                color: Color.fromRGBO(31, 31, 31, 1),
                child: Text(
                  "First Player\n\n" +
                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                      "$x_score",
                  style: TextStyle(
                      fontSize: 15, fontFamily: "Magic1", color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 120,
                height: 70,
                color: Color.fromRGBO(31, 31, 31, 1),
                child: Text(
                    "AI Player\n\n" +
                        "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t" +
                        "$o_score",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Magic1",
                        color: Colors.white)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "$x",
                style: TextStyle(
                    fontSize: 40, fontFamily: "Magic1", color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: EdgeInsets.only(left: 100),
                width: 250,
                height: 250,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List<Widget>.generate(9, (index) {
                    return GridTile(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Func2(index);
                          });
                        },
                        child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 5)),
                            child: Center(
                              child: Text(
                                box2[index],
                                style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: "Magic1",
                                    color: Color.fromARGB(255, 91, 231, 48)),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   width: 200,
              //   height: 50,
              //   child: ElevatedButton.icon(
              //     icon: Icon(Icons.laptop_chromebook_sharp),
              //     label: Text("Choose",
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontFamily: "Magic1",
              //             color: Color.fromARGB(255, 255, 255, 255))),
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Color.fromRGBO(163, 64, 97, 1),
              //     ),
              //     onPressed: () => dialogBuilder(context),
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.clear),
                  label: Text("Clear",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Magic1",
                          color: Color.fromARGB(255, 243, 240, 240))),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(63, 44, 131, 1),
                  ),
                  onPressed: (() {
                    setState(() {
                      for (int i = 0; i < 9; i++) {
                        box[i] = '';
                        box2[i] = '';
                        start = 1;
                        win = "";
                        x = "";
                        turn = "";
                        draw2 = 0;
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
        ],
      ),
    );
  }

  Future<void> dialogBuilder(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Choose'),
            content:
                const Text('choose what do you wou want olay with ( X OR O )'),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('X'),
                onPressed: () {
                  Navigator.of(context).pop();
                  start = 1;
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('O'),
                onPressed: () {
                  Navigator.of(context).pop();
                  start = 0;
                },
              ),
            ],
          );
        });
  }
}
