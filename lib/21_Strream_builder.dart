import 'package:flutter/material.dart';

class SreamBuilder1 extends StatefulWidget {
  const SreamBuilder1({Key? key}) : super(key: key);

  @override
  State<SreamBuilder1> createState() => _SreamBuilder1State();
}

class _SreamBuilder1State extends State<SreamBuilder1> {
  Stream<int> Vstream = Stream.periodic(
    Duration(seconds: 1),
    (Count) => Count,
  );
  int? streamvalue = 0;
  var timevalue = 0;
  var Vpause = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: Vstream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data != streamvalue) {
                    print('Stream = ${snapshot.data}');
                    streamvalue = snapshot.data as int;
                    if (!Vpause) {
                      timevalue++;
                    }
                  }
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Timer ',
                      style: TextStyle(fontSize: 25),
                    ),
                    Card(
                      child: timerUiPage(),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  timerUiPage() {
    return Column(
      children: [
        Text(
          '$timevalue',
          style: TextStyle(fontSize: 30),
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  Vpause = !Vpause;
                });
              },
              icon: Icon(Vpause ? Icons.play_arrow : Icons.pause),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  Vpause = true;
                  timevalue = 0;
                });
              },
              icon: Icon(Icons.stop),
            )
          ],
        )
      ],
    );
  }
}
