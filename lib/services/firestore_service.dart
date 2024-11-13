import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser(String userId, String name) async {
    await users.doc(userId).set({'name': name, 'timestamp': FieldValue.serverTimestamp()});
  }

  Stream<QuerySnapshot> getUsers() {
    return users.snapshots();
  }

  Future<void> deleteUser(String userId) async {
    await users.doc(userId).delete();
  }
}
