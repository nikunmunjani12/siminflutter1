import 'package:flutter/material.dart';

class Baselenes1 extends StatefulWidget {
  const Baselenes1({Key? key}) : super(key: key);

  @override
  State<Baselenes1> createState() => _Baselenes1State();
}

class _Baselenes1State extends State<Baselenes1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
              child: Baseline(
                child: Container(
                  height: 80,
                  width: 80,
                  color: Colors.black87,
                ),
                baseline: 40,
                baselineType: TextBaseline.alphabetic,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.cyan,
              child: Baseline(
                baseline: 200,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
