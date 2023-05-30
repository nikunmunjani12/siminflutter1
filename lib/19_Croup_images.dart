import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class CroupImages extends StatefulWidget {
  const CroupImages({Key? key}) : super(key: key);

  @override
  State<CroupImages> createState() => _CroupImagesState();
}

class _CroupImagesState extends State<CroupImages> {
  GlobalKey<ExtendedImageEditorState> editorkey =
      GlobalKey<ExtendedImageEditorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedImage.asset(
        'assets/images/dog.jpg',
        fit: BoxFit.contain,
        mode: ExtendedImageMode.editor,
        extendedImageEditorKey: editorkey,
        initEditorConfigHandler: (state) {
          return EditorConfig(
            maxScale: 8.0,
            hitTestSize: 20.0,
            cropRectPadding: EdgeInsets.all(10),
          );
        },
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ButtonBar(
          children: [
            ElevatedButton.icon(
              onPressed: () => editorkey.currentState!.rotate(right: true),
              icon: Icon(Icons.rotate_right),
              label: Text('Rotate right'),
            ),
            ElevatedButton.icon(
              onPressed: () => editorkey.currentState!.rotate(right: false),
              icon: Icon(Icons.rotate_left),
              label: Text('Rotate left'),
            ),
            ElevatedButton.icon(
              onPressed: () => editorkey.currentState!.reset(),
              icon: Icon(Icons.restore),
              label: Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
