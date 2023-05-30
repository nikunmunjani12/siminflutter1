import 'package:flutter/material.dart';

class TextFeaildwidghet extends StatefulWidget {
  const TextFeaildwidghet({Key? key}) : super(key: key);

  @override
  State<TextFeaildwidghet> createState() => _TextFeaildwidghetState();
}

class _TextFeaildwidghetState extends State<TextFeaildwidghet> {
  var name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.cenater,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                // onSubmitted: (value) {
                //   setState(() {
                //     name = value;
                //   });
                // },
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: name.isEmpty ? Icon(Icons.abc_sharp) : Icon(Icons.add),
            )
            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: name.isEmpty
            //       ? Text('')
            //       : Text(
            //           'Your name is $name',
            //           style: TextStyle(fontSize: 30),
            //         ),
            // )
          ],
        ),
      ),
    );
  }
}
