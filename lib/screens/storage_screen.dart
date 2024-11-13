import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StorageScreen extends StatefulWidget {
  @override
  _StorageScreenState createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final ImagePicker _picker = ImagePicker();
  String? _downloadUrl;

  Future<void> _uploadFile() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      File file = File(pickedFile.path);
      try {
        await _storage.ref('uploads/${file.path.split('/').last}').putFile(file);
        _downloadUrl = await _storage.ref('uploads/${file.path.split('/').last}').getDownloadURL();
        setState(() {});
      } catch (e) {
        print("Upload Failed: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase Storage Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _uploadFile, child: Text("Upload Image")),
            if (_downloadUrl != null)
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Image.network(_downloadUrl!),
              ),
          ],
        ),
      ),
    );
  }
}
