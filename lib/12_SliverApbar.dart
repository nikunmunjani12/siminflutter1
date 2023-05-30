import 'package:flutter/material.dart';

class SliverApbar1 extends StatefulWidget {
  const SliverApbar1({Key? key}) : super(key: key);

  @override
  State<SliverApbar1> createState() => _SliverApbar1State();
}

class _SliverApbar1State extends State<SliverApbar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 150,
            //title: Text('Sliverapbar'),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Sliver apbar',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('Sliverfillremimingig..'),
            ),
          )
        ],
      ),
    );
  }
}
