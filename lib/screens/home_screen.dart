import 'package:flutter/material.dart';
import 'firestore_screen.dart';
import 'realtime_database_screen.dart';
import 'storage_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase Features")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FirestoreScreen()));
              },
              child: Text("Firestore"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => RealtimeDatabaseScreen()));
              },
              child: Text("Realtime Database"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => StorageScreen()));
              },
              child: Text("Storage"),
            ),
          ],
        ),
      ),
    );
  }
}
