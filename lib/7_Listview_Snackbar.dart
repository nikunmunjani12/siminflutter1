// import 'package:flutter/material.dart';
//
// class ListViewSnackbar extends StatefulWidget {
//   const ListViewSnackbar({Key? key}) : super(key: key);
//
//   @override
//   State<ListViewSnackbar> createState() => _ListViewSnackbarState();
// }
//
// class _ListViewSnackbarState extends State<ListViewSnackbar> {
//   var ls = List.generate(50, (index) => 'Item $index');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 200,
//               child: ListView.builder(
//                 itemCount: ls.length,
//                 itemBuilder: (context, index) {
//                   return Dismissible(
//                     key: Key(ls[index]),
//                     child: ListTile(
//                       title: Text('Item $index'),
//                     ),
//                     onDismissed: (value) {
//                       ls.removeAt(index);
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Item $index Dismiss'),
//                           action:
//                               SnackBarAction(label: 'Undo', onPressed: () {}),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ListViewSnackbar extends StatefulWidget {
  const ListViewSnackbar({Key? key}) : super(key: key);

  @override
  State<ListViewSnackbar> createState() => _ListViewSnackbarState();
}

class _ListViewSnackbarState extends State<ListViewSnackbar> {
  var ls = List.generate(50, (index) => 'item ${index}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ls.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(ls[index]),
                  child: ListTile(
                    title: Text('${ls[index]}'),
                  ),
                  onDismissed: (value) {
                    setState(() {
                      ls.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${ls[index]}'),
                          action:
                              SnackBarAction(onPressed: () {}, label: 'undo'),
                        ),
                      );
                    });
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
