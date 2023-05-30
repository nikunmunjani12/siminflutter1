import 'package:flutter/material.dart';

class Wrap1 extends StatefulWidget {
  const Wrap1({Key? key}) : super(key: key);

  @override
  State<Wrap1> createState() => _Wrap1State();
}

class _Wrap1State extends State<Wrap1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              children: [
                Chip(
                  label: Text('one 1'),
                  avatar: CircleAvatar(
                    child: Text('1'),
                  ),
                ),
                Chip(
                  label: Text('two 2'),
                  avatar: CircleAvatar(
                    child: Text('2'),
                  ),
                ),
                Chip(
                  label: Text('three 3'),
                  avatar: CircleAvatar(
                    child: Text('3'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
