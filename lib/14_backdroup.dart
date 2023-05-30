import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class backdroup1 extends StatefulWidget {
  const backdroup1({Key? key}) : super(key: key);

  @override
  State<backdroup1> createState() => _backdroup1State();
}

class _backdroup1State extends State<backdroup1> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: Text('Backdroup'),
      ),
      backLayer: Center(
        child: Text('Backlayer'),
      ),
      frontLayer: Center(
        child: Text('fontlayer'),
      ),
    );
  }
}
