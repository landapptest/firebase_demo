import 'package:firebase_database/firebase_database.dart';

class RealtimeDatabaseService {
  final DatabaseReference messages = FirebaseDatabase.instance.ref().child('messages');  // 'reference()' 대신 'ref()' 사용

  Future<void> sendMessage(String message) async {
    await messages.push().set({
      'text': message,
      'timestamp': ServerValue.timestamp,
    });
  }

  DatabaseReference getMessagesRef() {
    return messages;
  }
}
