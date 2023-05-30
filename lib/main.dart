import 'package:flutter/material.dart';

import '10_Steppers.dart';
import '11_TogleButton.dart';
import '16_Animation_Continer.dart';
import '23_Call-Share.dart';
import '24_Internate.dart';
import '25_SharePreferences_Flutter1.dart';
import '26_Provider.dart';
import '28_Sqlite.dart';
import '2_Bselines.dart';
import '3_CardWidghet.dart';
import '4_TextFeild.dart';
import '6_Stetch.dart';
import '7_Listview_Snackbar.dart';
import '8_RiceText.dart';
import '9_Chek_Radio_Listtile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sqlite1(),
    );
  }
}
