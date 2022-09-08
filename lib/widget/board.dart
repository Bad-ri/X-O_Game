import 'package:flutter/material.dart';

import '../function/functionality.dart';

@override
board() {
  Container(
    // margin: EdgeInsets.only(left: 100),
    width: 250,
    height: 250,
    child: GridView.count(
      crossAxisCount: 3,
      children: List<Widget>.generate(9, (index) {
        return GridTile(
          child: InkWell(
            onTap: () => Func(index),
            child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255), width: 5)),
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
  );
}
