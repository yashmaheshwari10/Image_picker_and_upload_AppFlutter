import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImagePickPage extends StatefulWidget {
  const ImagePickPage({super.key});

  @override
  State<ImagePickPage> createState() => _ImagePickPageState();
}

class _ImagePickPageState extends State<ImagePickPage> {
  File? imageslected;
  late String name;
  UploadTask? uploadTask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Pick image and upload"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Center(),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Container(
                      height: 110,
                      child: Column(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              _imagePicker();
                            },
                            color: Colors.blue,
                            child: Text('Pick image from gallery'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          MaterialButton(
                            onPressed: () {
                              imagetaker();
                            },
                            color: Colors.red,
                            child: Text('Take a picture'),
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'))
                    ],
                  ),
                );
              },
              icon: Icon(Icons.camera_alt_outlined)),
          SizedBox(
            height: 20,
          ),
          imageslected != null
              ? Image.file(imageslected!)
              : Text('select an image'),
          imageslected != null
              ? ElevatedButton(onPressed: uploadfile, child: Text('upload'))
              : Text(''),
        ],
      ),
    );
  }

  Future imagetaker() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage == null) {
      return;
    }
    setState(() {
      imageslected = File(returnedImage!.path);
      name = returnedImage.name;
    });
  }

  Future _imagePicker() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) {
      return;
    }
    setState(() {
      imageslected = File(returnedImage!.path);
      name = returnedImage.name;
    });
  }

  Future uploadfile<String>() async {
    final name = DateTime.now().microsecondsSinceEpoch.toString();
    final file = File(imageslected!.path);

    final ref = FirebaseStorage.instance.ref().child('mypictures/$name');
    uploadTask = ref.putFile(file);
    final Snapshot = await uploadTask!.whenComplete(() {});
  }
}
