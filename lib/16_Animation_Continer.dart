import 'dart:math';

import 'package:flutter/material.dart';

class AnimationContiner1 extends StatefulWidget {
  const AnimationContiner1({Key? key}) : super(key: key);

  @override
  State<AnimationContiner1> createState() => _AnimationContiner1State();
}

class _AnimationContiner1State extends State<AnimationContiner1> {
  double height = 200;
  double width = 200;
  double radius = 10;
  Color color = Colors.cyanAccent;
  final random1 = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: width,
              height: height,
              child: FlutterLogo(),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(radius),
              ),
              curve: Curves.bounceInOut,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  width = random1.nextInt(200).toDouble();
                  height = random1.nextInt(200).toDouble();
                  radius = random1.nextInt(100).toDouble();
                  color = Color.fromRGBO(random1.nextInt(256),
                      random1.nextInt(256), random1.nextInt(256), 1);
                });
              },
              icon: Icon(Icons.update),
              label: Text('update continer'),
            )
          ],
        ),
      ),
    );
  }
}
