import 'package:flutter/material.dart';

import '28_2sqlite.dart';

class Sqlite1 extends StatefulWidget {
  const Sqlite1({Key? key}) : super(key: key);

  @override
  State<Sqlite1> createState() => _Sqlite1State();
}

class _Sqlite1State extends State<Sqlite1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                int i = await DataBaseHelper.instance
                    .insetData({DataBaseHelper.name: 'Abcd'});
                print('Data Insert $i');
              },
              child: Text('Insert'),
            ),
            TextButton(
              onPressed: () async {
                List<Map<String, dynamic>> data =
                    await DataBaseHelper.instance.getAllData();
                print('Data  $data');
              },
              child: Text('getData'),
            ),
            TextButton(
              onPressed: () async {
                int i = await DataBaseHelper.instance
                    .update({DataBaseHelper.id: 1, DataBaseHelper.name: 'xyz'});
                print('Data update $i');
              },
              child: Text('update'),
            ),
            TextButton(
              onPressed: () async {
                int i = await DataBaseHelper.instance.delete(1);
                print('Data delete $i');
              },
              child: Text('delete'),
            ),
          ],
        ),
      ),
    );
  }
}
