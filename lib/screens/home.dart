// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:xo/widget/button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat(reverse: true);
  late final AnimationController _controller2 = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );
  late final Animation<double> _animation2 = CurvedAnimation(
    parent: _controller2,
    curve: Curves.elasticOut,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(31, 31, 31, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 150),
                child: RotationTransition(
                  turns: _animation,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(image: AssetImage("assets/x_1.jpg")),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 150),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/o_1.png")),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                //margin: EdgeInsets.only(left: 100),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/o_1.png")),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: RotationTransition(
                  turns: _animation2,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(image: AssetImage("assets/x_1.jpg")),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: button(
                  width: 200,
                  hight: 50,
                  color: Color.fromARGB(255, 167, 68, 101),
                  icon: Icon(Icons.person),
                  name: "Single Player",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(
                width: 200,
                hight: 50,
                color: Color.fromRGBO(44, 65, 110, 1),
                icon: Icon(Icons.people),
                name: "MultiPlayer",
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(
                width: 200,
                hight: 50,
                color: Color.fromARGB(255, 53, 134, 66),
                icon: Icon(Icons.settings),
                name: "Settings",
              )
            ],
          ),
        ],
      ),
    );
  }
}
