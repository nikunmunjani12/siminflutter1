import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text Widget"),
      ),
      body: Column(
        children: [
          Center(
            child: RichText(
              text: TextSpan(
                text: 'Nikunj',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepOrange,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Viraj',
                    style:
                        TextStyle(fontSize: 35, color: Colors.green.shade900),
                  ),
                  TextSpan(
                    text: ' J.D',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: ' Deep',
                  ),
                ],
              ),
            ),
          ),
          RichText(text: TextSpan(text: 'nikuj'))
        ],
      ),
    );
  }
}
