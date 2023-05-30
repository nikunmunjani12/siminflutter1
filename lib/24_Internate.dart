import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class Internet1 extends StatefulWidget {
  const Internet1({Key? key}) : super(key: key);

  @override
  State<Internet1> createState() => _Internet1State();
}

class _Internet1State extends State<Internet1> {
  String result = '';
  @override
  void initState() {
    chekConnection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        result != null ? result : 'unknow',
        style: TextStyle(fontSize: 30),
      ),
    ));
  }

  chekConnection() {
    Connectivity().onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        setState(() {
          result = 'Connected';
        });
      } else {
        setState(() {
          result = 'No Internet';
        });
      }
    });
  }
}
