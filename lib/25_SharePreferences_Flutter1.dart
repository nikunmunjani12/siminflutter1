import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharepreffernce1 extends StatefulWidget {
  const Sharepreffernce1({Key? key}) : super(key: key);

  @override
  State<Sharepreffernce1> createState() => _Sharepreffernce1State();
}

class _Sharepreffernce1State extends State<Sharepreffernce1>
    with SingleTickerProviderStateMixin {
  var _prefs = SharedPreferences.getInstance();
  var counter;

  @override
  void initState() {
    counter = _prefs.then((SharedPreferences prefs) {
      return prefs.getInt('counter') ?? 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: counter,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              default:
                if (snapshot.hasError) {
                  return Text('Error:-${snapshot.error}');
                } else {
                  return Text('Button Tap ${snapshot.data}');
                }
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _incrimentcounter,
      ),
    );
  }

  _incrimentcounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter1 = (prefs.getInt('counter') ?? 0) + 1;
    setState(() {
      counter = prefs.setInt('counter', counter1).then((bool success) {
        return counter1;
      });
    });
  }
}
