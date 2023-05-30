import 'package:flutter/material.dart';

class Chips1 extends StatefulWidget {
  const Chips1({Key? key}) : super(key: key);

  @override
  State<Chips1> createState() => _Chips1State();
}

class _Chips1State extends State<Chips1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              label: Text('Chip 1'),
              avatar: CircleAvatar(
                child: Text('C'),
              ),
              shadowColor: Colors.indigo,
              backgroundColor: Colors.cyan,
            ),
            Chip(
              label: Text('hello'),
              avatar: CircleAvatar(
                child: Text('H'),
              ),
              backgroundColor: Colors.amberAccent,
            )
          ],
        ),
      ),
    );
  }
}
