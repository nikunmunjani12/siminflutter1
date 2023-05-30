import 'package:flutter/material.dart';

class Togglebutton1 extends StatefulWidget {
  const Togglebutton1({Key? key}) : super(key: key);

  @override
  State<Togglebutton1> createState() => _Togglebutton1State();
}

class _Togglebutton1State extends State<Togglebutton1> {
  var selected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButtons(
              children: [
                Icon(Icons.home),
                Icon(Icons.work),
                Icon(Icons.calendar_month_sharp)
              ],
              isSelected: selected,
              onPressed: (index) {
                setState(() {
                  selected[index] = !selected[index];
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
