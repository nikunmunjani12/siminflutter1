import 'dart:math';

import 'package:flutter/material.dart';

class Animationbuilder1 extends StatefulWidget {
  const Animationbuilder1({Key? key}) : super(key: key);

  @override
  State<Animationbuilder1> createState() => _Animationbuilder1State();
}

class _Animationbuilder1State extends State<Animationbuilder1>
    with SingleTickerProviderStateMixin {
  AnimationController? controller1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller1 = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    var animation1 = Tween<double>(begin: 0, end: pi).animate(controller1!);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: animation1,
              child: FlutterLogo(
                size: 200,
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: animation1.value,
                  child: child,
                );
              },
            ),
            ElevatedButton(
              onPressed: () => controller1!.forward(),
              child: Text('Rotate forwed'),
            ),
            ElevatedButton(
              onPressed: () => controller1!.reverse(),
              child: Text('Rotate revarse'),
            )
          ],
        ),
      ),
    );
  }
}
