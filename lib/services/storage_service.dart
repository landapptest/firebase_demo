import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final ImagePicker _picker = ImagePicker();

  Future<void> uploadFile() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      File file = File(pickedFile.path);
      try {
        await _storage.ref('uploads/${file.path.split('/').last}').putFile(file);
        print("File Uploaded Successfully");
      } catch (e) {
        print("Upload Failed: $e");
      }
    }
  }
}
