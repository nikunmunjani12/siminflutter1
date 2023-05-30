import 'package:flutter/material.dart';

class steppers extends StatefulWidget {
  const steppers({Key? key}) : super(key: key);

  @override
  State<steppers> createState() => _steppersState();
}

class _steppersState extends State<steppers> {
  var stepers = [
    Step(
      title: Text('Step 1'),
      content: Text('Go to Step 2'),
    ),
    Step(
      title: Text('Step 2'),
      content: Text('Go to Step 3'),
    ),
    Step(
      title: Text('Step 3'),
      content: Text('Go to Step 4'),
    ),
    Step(
      title: Text('Step 4'),
      content: Text('Go to Step 5'),
    )
  ];
  var cuttent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          steps: stepers,
          currentStep: cuttent,
          elevation: 20,
          onStepContinue: () {
            if (cuttent < stepers.length - 1) {
              setState(() {
                cuttent++;
              });
            }
          },
          onStepCancel: () {
            if (cuttent > 0) {
              setState(() {
                cuttent--;
              });
            }
          },
        ),
      ),
    );
  }
}
