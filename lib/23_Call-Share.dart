import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class Callshare1 extends StatefulWidget {
  const Callshare1({Key? key}) : super(key: key);

  @override
  State<Callshare1> createState() => _Callshare1State();
}

class _Callshare1State extends State<Callshare1> {
  TextEditingController number1 = TextEditingController();
  TextEditingController share1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: number1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Number',
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextField(
              controller: share1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.share),
                labelText: 'share',
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => launch('tel: ${number1.text}'),
                child: Icon(Icons.call),
              ),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                onPressed: () => Share.share(share1.text),
                child: Icon(Icons.share),
              )
            ],
          )
        ],
      ),
    );
  }
}
