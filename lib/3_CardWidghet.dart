import 'package:flutter/material.dart';

class CardWidghet extends StatefulWidget {
  const CardWidghet({Key? key}) : super(key: key);

  @override
  State<CardWidghet> createState() => _CardWidghetState();
}

class _CardWidghetState extends State<CardWidghet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Text('hello caed'),
            ),
            Card(
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                child: Text('hello card'),
              ),
              elevation: 10,
              shadowColor: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
