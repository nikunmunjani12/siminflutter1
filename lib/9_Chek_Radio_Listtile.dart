import 'package:flutter/material.dart';

class ChekradioListtile extends StatefulWidget {
  const ChekradioListtile({Key? key}) : super(key: key);

  @override
  State<ChekradioListtile> createState() => _ChekradioListtileState();
}

class _ChekradioListtileState extends State<ChekradioListtile> {
  bool cheak = false;
  int radio = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "CheckboxListTile",
              style: TextStyle(fontSize: 25, color: Colors.indigo),
            ),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(
                title: Text('Chek 1'),
                secondary: Icon(Icons.account_circle),
                value: cheak,
                onChanged: (value) {
                  setState(() {
                    cheak = value!;
                  });
                }),
            SizedBox(
              height: 100,
            ),
            Text(
              "RadioListTile",
              style: TextStyle(fontSize: 25, color: Colors.indigo),
            ),
            SizedBox(
              height: 20,
            ),
            RadioListTile(
              title: Text('radio 1'),
              subtitle: Text('Sub radio 1'),
              secondary: Icon(Icons.account_circle),
              value: 1,
              groupValue: radio,
              onChanged: (int? value) {
                setState(() {
                  radio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('radio 2'),
              subtitle: Text('Sub radio 2'),
              secondary: Icon(Icons.account_circle),
              value: 2,
              groupValue: radio,
              onChanged: (int? value) {
                setState(() {
                  radio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('radio 3'),
              subtitle: Text('Sub radio 3'),
              secondary: Icon(Icons.account_circle),
              value: 3,
              groupValue: radio,
              onChanged: (int? value) {
                setState(() {
                  radio = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
