import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mapchips extends StatefulWidget {
  const Mapchips({Key? key}) : super(key: key);

  @override
  State<Mapchips> createState() => _MapchipsState();
}

class _MapchipsState extends State<Mapchips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              direction: Axis.vertical,
              children: [
                'viraj',
                'denis',
                'jaydeep',
                'nikunj',
                'deep',
              ].map((name) {
                return Chip(
                  label: Text('$name'),
                  avatar: CircleAvatar(
                    child: Text(name.substring(0, 1)),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
