import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagesoicker1 extends StatefulWidget {
  const Imagesoicker1({Key? key}) : super(key: key);

  @override
  State<Imagesoicker1> createState() => _Imagesoicker1State();
}

class _Imagesoicker1State extends State<Imagesoicker1> {
  File? imagesFile;
  var _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            ButtonBar(
              children: [
                IconButton(
                  onPressed: () async {
                    await pickimagescamera();
                  },
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                IconButton(
                  onPressed: () async {
                    await pickimagesgallery();
                  },
                  icon: Icon(Icons.photo),
                )
              ],
            ),
            imagesFile == null ? Placeholder() : Image.file(imagesFile!),
          ],
        ),
      ),
    );
  }

  pickimagescamera() async {
    var pickimage1 = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      imagesFile = File(pickimage1!.path);
    });
  }

  pickimagesgallery() async {
    var pickimage2 = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagesFile = File(pickimage2!.path);
    });
  }
}
