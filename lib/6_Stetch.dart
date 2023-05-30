import 'package:flutter/material.dart';

class Stretch1 extends StatefulWidget {
  const Stretch1({Key? key}) : super(key: key);

  @override
  State<Stretch1> createState() => _Stretch1State();
}

class _Stretch1State extends State<Stretch1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 200,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('A1'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Button 2'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Enter button 3'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
