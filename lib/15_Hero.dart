import 'package:flutter/material.dart';

class Hero1 extends StatefulWidget {
  const Hero1({Key? key}) : super(key: key);

  @override
  State<Hero1> createState() => _Hero1State();
}

class _Hero1State extends State<Hero1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Tap to open this images'),
              leading: GestureDetector(
                child: Hero(
                  tag: 'my hero',
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dog.jpg'),
                  ),
                ),
                onTap: () => secondpage(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  secondpage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'my hero',
              child: Image.asset('assets/images/dog.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
